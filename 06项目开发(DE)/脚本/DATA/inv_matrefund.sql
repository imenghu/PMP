truncate table inv_matrefund
set IDENTITY_INSERT inv_matrefund  ON
go
insert INTO inv_matrefund ([mat_refund_id]
      ,[org_id]
      ,[out_userid]
      ,[ref_org_id]
      ,[ref_userid]
      ,[piid]
      ,[refund_state]
      ,[state]
      ,[refund_remarks]
      ,[create_time]
      ,[update_time]) select [mat_refund_id]
      ,[org_id]
      ,[out_userid]
      ,[ref_org_id]
      ,[ref_userid]
      ,[piid]
      ,[refund_state]
      ,[state]
      ,[refund_remarks]
      ,[create_time]
      ,[update_time]
FROM openquery(MYSQL, 'SELECT * FROM info_sys.inv_matrefund') 
set IDENTITY_INSERT inv_matrefund  OFF
go