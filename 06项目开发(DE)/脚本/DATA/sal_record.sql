truncate table sal_record
set IDENTITY_INSERT sal_record  ON
go
insert INTO sal_record ([record_id]
      ,[record_date]
      ,[for_key_id]
      ,[customer_code]
      ,[customer_name]
      ,[record_money]
      ,[initial_money]
      ,[final_money]
      ,[summary]
      ,[record_flag]
      ,[create_time]) select [record_id]
      ,[record_date]
      ,[for_key_id]
      ,[customer_code]
      ,[customer_name]
      ,[record_money]
      ,[initial_money]
      ,[final_money]
      ,[summary]
      ,[record_flag]
      ,[create_time]
FROM openquery(MYSQL, 'SELECT * FROM info_sys.sal_record') 
set IDENTITY_INSERT sal_record  OFF
go