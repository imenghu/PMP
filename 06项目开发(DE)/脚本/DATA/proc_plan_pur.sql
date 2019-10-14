truncate table proc_plan_pur
set IDENTITY_INSERT proc_plan_pur  ON
go
insert INTO proc_plan_pur ([plan_pur_id]
      ,[plan_pur_name]
      ,[org_id]
      ,[plan_pur_year]
      ,[plan_type]
      ,[total_price]
      ,[plan_pur_remarks]
      ,[demand_userid]
      ,[demand_state]
      ,[state]
      ,[create_time]
      ,[update_time]) select [plan_pur_id]
      ,[plan_pur_name]
      ,[org_id]
      ,[plan_pur_year]
      ,[plan_type]
      ,[total_price]
      ,[plan_pur_remarks]
      ,[demand_userid]
      ,[demand_state]
      ,[state]
      ,[create_time]
      ,[update_time]
FROM openquery(MYSQL, 'SELECT * FROM info_sys.proc_plan_pur') 
set IDENTITY_INSERT proc_plan_pur  OFF
go