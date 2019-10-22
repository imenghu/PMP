truncate table proc_demand
set IDENTITY_INSERT proc_demand  ON
go
insert INTO proc_demand ([demand_id]
      ,[org_id]
      ,[piid]
      ,[total_price]
      ,[if_urg]
      ,[demand_remarks]
      ,[demand_userid]
      ,[demand_state]
      ,[perform_info]
      ,[state]
      ,[create_time]
      ,[update_time]) select *
FROM openquery(MYSQL, 'SELECT demand_id
      ,org_id
      ,piid
      ,total_price
      ,cast(if_urg as char(1)) as if_urg
      ,demand_remarks
      ,demand_userid
      ,demand_state
      ,perform_info
      ,state
      ,create_time
      ,update_time FROM info_sys.proc_demand') 
set IDENTITY_INSERT proc_demand  OFF
go