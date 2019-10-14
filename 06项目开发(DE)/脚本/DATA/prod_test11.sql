truncate table prod_test11
set IDENTITY_INSERT prod_test11  ON
go
insert INTO prod_test11 ([analyze_date]
      ,[mat_id]
      ,[mat_name]
      ,[spec]
      ,[smell]
      ,[purity]
      ,[memo]
      ,[operator_name]
      ,[user_id]
      ,[state]
      ,[create_time]
      ,[update_time]
      ,[org_id]
      ,[test_id]) select [analyze_date]
      ,[mat_id]
      ,[mat_name]
      ,[spec]
      ,[smell]
      ,[purity]
      ,[memo]
      ,[operator_name]
      ,[user_id]
      ,[state]
      ,[create_time]
      ,[update_time]
      ,[org_id]
      ,[test_id]
FROM openquery(MYSQL, 'SELECT * FROM info_sys.prod_test11') 
set IDENTITY_INSERT prod_test11  OFF
go