namespace StatsConsole;

public class ObtainDataProdDonetFoundation : ObtainData, IApi
{
    public ObtainDataProdDonetFoundation(): base(Program.DotNetFoundation)
    {

    }
}

public class ObtainDataProdQuozd: ObtainData, IApi
{
    public ObtainDataProdQuozd() : base(Program.Quozd)
    {

    }
}


public class ObtainDataProdThangchung : ObtainData, IApi
{
    public ObtainDataProdThangchung() : base(Program.Thangchung)
    {

    }
}

