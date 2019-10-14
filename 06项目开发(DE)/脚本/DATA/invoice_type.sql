truncate table invoice_type
set IDENTITY_INSERT invoice_type  ON
go
insert INTO invoice_type ([id]
      ,[type_code]
      ,[type]) select [id]
      ,[type_code]
      ,[type]
FROM openquery(MYSQL, 'SELECT * FROM info_sys.invoice_type') 
set IDENTITY_INSERT invoice_type  OFF
go