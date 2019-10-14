truncate table sal_confirmation_info
set IDENTITY_INSERT sal_confirmation_info  ON
go
insert INTO sal_confirmation_info ([info_id]
      ,[startdate]
      ,[enddate]
      ,[area_name]
      ,[customer_id]
      ,[customer_name]
      ,[customer_code]
      ,[createdate]
      ,[updatedate]) select [info_id]
      ,[startdate]
      ,[enddate]
      ,[area_name]
      ,[customer_id]
      ,[customer_name]
      ,[customer_code]
      ,[createdate]
      ,[updatedate]
FROM openquery(MYSQL, 'SELECT * FROM info_sys.sal_confirmation_info') 
set IDENTITY_INSERT sal_confirmation_info  OFF
go