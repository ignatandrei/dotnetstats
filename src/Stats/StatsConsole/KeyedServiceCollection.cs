namespace KeyToKey;
public static class Extensions
{
        
    public static WebApplicationBuilder KeyToKey(this WebApplicationBuilder builder)
    {
        builder.Host.UseServiceProviderFactory(new KeyedServiceProviderFactory());
        return builder;
    }

}

public class KeyedServiceProviderFactory :  IServiceProviderFactory<IServiceCollection>
{
    public const string PrefixKey = "StandAlone_";
    private DefaultServiceProviderFactory _defaultServiceProviderFactory;
    public KeyedServiceProviderFactory()
    {
        _defaultServiceProviderFactory = new DefaultServiceProviderFactory();
    }
    public IServiceCollection CreateBuilder(IServiceCollection services)
    {
        return _defaultServiceProviderFactory.CreateBuilder(services);
    }

    public IServiceProvider CreateServiceProvider(IServiceCollection containerBuilder)
    {
        var noKeys = containerBuilder
            .Where(it => it != null)
            .Where(it => !it.IsKeyedService)
            .Select(it => it!)
            .ToArray();
        //var sc = new ServiceCollection();
        //foreach(var service in noKeys)
        //{
        //    sc.Insert(0,service);
        //}

        //var defaultSP = sc.BuildServiceProvider();
        var defaultSP = _defaultServiceProviderFactory.CreateServiceProvider(containerBuilder);

        var keyedServices = containerBuilder
            .Where(it => it != null)
            .Where(it => it.IsKeyedService)
            .Where(it => it.ServiceKey != null)
            .Where(it => it.ServiceKey!.ToString()!.StartsWith(PrefixKey))
            .Select(it => it!)
            .AggregateBy(

           keySelector: it => it.ServiceKey?.ToString() ?? "",
                seed: new List<ServiceDescriptor>(),
                (acc, it) =>
                {
                    acc.Add(it);
                    return acc;
                });
        ;
        List<ServiceProviderForKey> keyedServicesList = new();
        foreach (var keyedService in keyedServices)
        {
            var sc = new ServiceCollection();
            var keyed = keyedService.Value;
            var missing = noKeys.Where(it => !keyed.Any(kt => kt.ServiceType == it.ServiceType)).ToArray();
            foreach (var sK in keyed)
            {
                ServiceDescriptor? serviceDescriptor = null;
                if (sK.ImplementationInstance != null)
                {
                    serviceDescriptor = new ServiceDescriptor(sK.ServiceType, sK.ImplementationInstance);
                }
                else if (sK.ImplementationFactory != null)
                {
                    serviceDescriptor = new ServiceDescriptor(sK.ServiceType, sK.ImplementationFactory, sK.Lifetime);
                }
                else if (sK.ImplementationType != null)
                {
                    serviceDescriptor = new ServiceDescriptor(sK.ServiceType, sK.ImplementationType, sK.Lifetime);
                }
                else if (sK.KeyedImplementationInstance != null)
                {
                    serviceDescriptor = new ServiceDescriptor(sK.ServiceType, sK.KeyedImplementationInstance, sK.Lifetime);
                }

                else if (sK.KeyedImplementationFactory != null)
                {
                    Func<IServiceProvider, object> func = sp => sK.KeyedImplementationFactory(sp, sK.ServiceKey);
                    serviceDescriptor = new ServiceDescriptor(sK.ServiceType, func, sK.Lifetime);
                }
                else if (sK.KeyedImplementationType != null)
                {
                    serviceDescriptor = new ServiceDescriptor(sK.ServiceType, sK.KeyedImplementationType, sK.Lifetime);
                }
                else
                {
                    throw new ArgumentException("cannot find constructor");
                }
                ArgumentNullException.ThrowIfNull(serviceDescriptor, nameof(serviceDescriptor));
                sc.Insert(0, serviceDescriptor);
            }
            foreach (var mK in missing)
            {
                sc.Insert(0, mK);
            }
            var sp = sc.BuildServiceProvider();
            var keySp = new ServiceProviderForKey(keyedService.Key, sp);
            keyedServicesList.Add(keySp);
        }
        return new ServiceProviderAll(defaultSP, keyedServicesList.ToDictionary(it => it.Key, it => (IServiceProvider)it));


    }


}
public class ServiceProviderAll :IServiceProvider, IKeyedServiceProvider
{
    public ServiceProviderAll(IServiceProvider defaultSP, Dictionary<string, IServiceProvider> all)
    {
        DefaultSP = defaultSP;
        All = all;
    }

    private IServiceProvider DefaultSP { get; }
    private Dictionary<string, IServiceProvider> All { get; }
    public object? GetKeyedService(Type serviceType, object? serviceKey)
    {
        var key = serviceKey?.ToString() ?? "";
        if (All.ContainsKey(key))
        {
            return All[key].GetService(serviceType);
        }
        return null;
    }

    public object GetRequiredKeyedService(Type serviceType, object? serviceKey)
    {
        var service = GetKeyedService(serviceType, serviceKey);
        ArgumentNullException.ThrowIfNull(service, nameof(service));
        return service;
    }

    public object? GetService(Type serviceType)
    {
        return DefaultSP.GetService(serviceType);
    }
}
public class ServiceProviderForKey : IServiceProvider
{
    private readonly ServiceProvider sp;

    public ServiceProviderForKey(string key, ServiceProvider sp)
    {
        Key = key;
        this.sp = sp;
    }

    public string Key { get; }

    public object? GetService(Type serviceType)
    {
        return sp.GetService(serviceType);
    }
}
