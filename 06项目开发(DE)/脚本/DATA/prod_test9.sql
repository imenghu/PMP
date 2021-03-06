truncate table prod_test9
set IDENTITY_INSERT prod_test9  ON
go
insert INTO prod_test9 ([analyze_date]
      ,[mat_id]
      ,[mat_name]
      ,[hops_type]
      ,[appearance]
      ,[aroma]
      ,[moisture]
      ,[a_acid]
      ,[b_acid]
      ,[storable]
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
      ,[hops_type]
      ,[appearance]
      ,[aroma]
      ,[moisture]
      ,[a_acid]
      ,[b_acid]
      ,[storable]
      ,[memo]
      ,[operator_name]
      ,[user_id]
      ,[org_id]
      ,[state]
      ,[create_time]
      ,[update_time]
      ,[test_id]
FROM openquery(MYSQL, 'SELECT * FROM info_sys.prod_test9') 
set IDENTITY_INSERT prod_test9  OFF
go