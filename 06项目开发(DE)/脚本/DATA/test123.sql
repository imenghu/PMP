truncate table test123
set IDENTITY_INSERT test123  ON
go
insert INTO test123 ([f1]
      ,[f2]) select [f1]
      ,[f2]
FROM openquery(MYSQL, 'SELECT * FROM info_sys.test123') 
set IDENTITY_INSERT test123  OFF
go