truncate table prod_test6
set IDENTITY_INSERT prod_test6  ON
go
insert INTO prod_test6 ([analyze_date]
      ,[mat_id]
      ,[mat_name]
      ,[tank_id]
      ,[ferment_days]
      ,[diacetyl]
      ,[memo]
      ,[operator_name]
      ,[user_id]
      ,[org_id]
      ,[state]
      ,[create_time]
      ,[update_time]
      ,[test_id]) select [analyze_date]
      ,[mat_id]
      ,[mat_name]
      ,[tank_id]
      ,[ferment_days]
      ,[diacetyl]
      ,[memo]
      ,[operator_name]
      ,[user_id]
      ,[org_id]
      ,[state]
      ,[create_time]
      ,[update_time]
      ,[test_id]
FROM openquery(MYSQL, 'SELECT * FROM info_sys.prod_test6') 
set IDENTITY_INSERT prod_test6  OFF
go