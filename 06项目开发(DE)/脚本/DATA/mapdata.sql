truncate table mapdata
set IDENTITY_INSERT mapdata  ON
go
insert INTO mapdata ([id]
      ,[province]
      ,[company]) select [id]
      ,[province]
      ,[company]
FROM openquery(MYSQL, 'SELECT * FROM info_sys.mapdata') 
set IDENTITY_INSERT mapdata  OFF
go