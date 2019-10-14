truncate table inv_out_master
set IDENTITY_INSERT inv_out_master  ON
go
insert INTO inv_out_master ([out_master_id]
      ,[org_id]
      ,[out_userid]
      ,[req_org_id]
      ,[req_userid]
      ,[piid]
      ,[out_state]
      ,[state]
      ,[outmaster_remarks]
      ,[create_time]
      ,[update_time]) select [out_master_id]
      ,[org_id]
      ,[out_userid]
      ,[req_org_id]
      ,[req_userid]
      ,[piid]
      ,[out_state]
      ,[state]
      ,[outmaster_remarks]
      ,[create_time]
      ,[update_time]
FROM openquery(MYSQL, 'SELECT * FROM info_sys.inv_out_master') 
set IDENTITY_INSERT inv_out_master  OFF
go