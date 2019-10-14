truncate table prod_test8
set IDENTITY_INSERT prod_test8  ON
go
insert INTO prod_test8 ([analyze_date]
      ,[mat_id]
      ,[mat_name]
      ,[impurity]
      ,[moisture]
      ,[leach_rate]
      ,[sac_time]
      ,[sac_WK]
      ,[a_nitrogen]
      ,[total_acid]
      ,[sprout]
      ,[powdery]
      ,[chroma_ebc]
      ,[chroma_ebc_boil]
      ,[ph]
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
      ,[impurity]
      ,[moisture]
      ,[leach_rate]
      ,[sac_time]
      ,[sac_WK]
      ,[a_nitrogen]
      ,[total_acid]
      ,[sprout]
      ,[powdery]
      ,[chroma_ebc]
      ,[chroma_ebc_boil]
      ,[ph]
      ,[memo]
      ,[operator_name]
      ,[user_id]
      ,[state]
      ,[create_time]
      ,[update_time]
      ,[org_id]
      ,[test_id]
FROM openquery(MYSQL, 'SELECT * FROM info_sys.prod_test8') 
set IDENTITY_INSERT prod_test8  OFF
go