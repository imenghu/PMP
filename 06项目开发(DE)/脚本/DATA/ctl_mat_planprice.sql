truncate table ctl_mat_planprice
set IDENTITY_INSERT ctl_mat_planprice  ON
go
insert INTO ctl_mat_planprice ([plan_price_id]
      ,[org_id]
      ,[mat_id]
      ,[mat_code]
      ,[mat_name]
      ,[mat_spec]
      ,[plan_price]
      ,[base_unit]
      ,[plan_price_remarks]
      ,[planprice_userid]
      ,[approval_state]
      ,[state]
      ,[create_time]
      ,[update_time]) select [plan_price_id]
      ,[org_id]
      ,[mat_id]
      ,[mat_code]
      ,[mat_name]
      ,[mat_spec]
      ,[plan_price]
      ,[base_unit]
      ,[plan_price_remarks]
      ,[planprice_userid]
      ,[approval_state]
      ,[state]
      ,[create_time]
      ,[update_time]
FROM openquery(MYSQL, 'SELECT * FROM info_sys.ctl_mat_planprice') 
set IDENTITY_INSERT ctl_mat_planprice  OFF
go