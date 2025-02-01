use DotNetStats
go
/*
SELECT 
      [IDProject]
      ,Sum([Count]) As Count
      ,[DateRecording]
into Stars_temp
  FROM [DotNetStats].[dbo].[Stars]
  group by [IDProject],[DateRecording]
go
delete from Stars
go
USE [DotNetStats]
GO

INSERT INTO [dbo].[Stars]
           ([IDProject]
           ,[Count]
           ,[DateRecording])
    Select [IDProject]
           ,[Count]
           ,[DateRecording]
		   from Stars_temp
GO
drop table Stars_temp
*/