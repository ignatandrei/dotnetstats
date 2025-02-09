use DotNetStats;
go
update Project set SourceCodeUrl=trim(SourceCodeUrl)
go


update Project
set SourceCodeUrl = SUBSTRING(SourceCodeUrl,1, len(SourceCodeUrl)-1)
where SourceCodeUrl like '%/'
go

delete from Project where id= 10769

delete from Project where id= 10515
delete from Project where id= 95

delete from Project where id= 10552
delete from Project where id= 10365
delete from Project where id= 10899
delete from Project where id=10958
delete from Stars where IDProject = 10958


delete from Project where id=10203

delete from Project where id= 10177
delete from Stars where IDProject = 10177

delete from Project where id=10793
delete from Stars where IDProject = 10793
go


  update Project
  set SourceCodeUrl = 'https://github.com/dotnet/roslyn-api-docs'
  where id=28

  update Project
  set SourceCodeUrl = 'https://github.com/dotnet/TorchSharp'
  where id=39

  update Project
  set SourceCodeUrl = 'https://github.com/danielcrenna/vault'
  where id=10058
  
  delete from Project
  where id=10244

   delete from Project
  where id=10354
  delete from Stars where IDProject = 10354

   update Project
  set SourceCodeUrl = 'https://github.com/dex-it/dex-common'
  where id=10521

  
   update Project
  set SourceCodeUrl = 'https://github.com/davidfowl/AspNetCoreDiagnosticScenarios'
  where id=10593

    
   update Project
  set SourceCodeUrl = 'https://github.com/Microsoft/dotnet'
  where id=10715

      
   delete from Project
  where id=10719
  delete from Stars where IDProject = 10719

     update Project
  set SourceCodeUrl = 'https://github.com/OData/WebApi'
  where id=10740

     update Project
  set SourceCodeUrl = 'https://github.com/dotnet/aspnetcore'
  where id=10752

  update Project
  set SourceCodeUrl = 'https://github.com/grpc/grpc'
  where id=10765

  
  update Project
  set SourceCodeUrl = 'https://github.com/Microsoft/vsts-agent'
  where id=10823

  update Project
  set SourceCodeUrl = 'https://github.com/Microsoft/FASTER'
  where id=10827

  
  update Project
  set SourceCodeUrl = 'https://github.com/mysql/mysql-connector-net'
  where id=10876

  update Project
  set SourceCodeUrl = 'https://github.com/ayende/ravendb'
  where id=10880


    update Project
  set SourceCodeUrl = 'https://github.com/SodiumFRP'
  where id=10912


  
    update Project
  set SourceCodeUrl = 'https://github.com/ALMMa/datatables.aspnet'
  where id=10964

  
    update Project
  set SourceCodeUrl = 'https://github.com/PlayFab/consuldotnet'
  where id=11044

  go
delete from Project where id=11166
go
delete from Stars where IDProject =11166
go


