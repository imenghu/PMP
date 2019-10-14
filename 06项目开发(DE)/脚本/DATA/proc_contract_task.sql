truncate table proc_contract_task
set IDENTITY_INSERT proc_contract_task  ON
go
insert INTO proc_contract_task ([contract_task_id]
      ,[contract_id]
      ,[pur_task_id]
      ,[submit_userid]
      ,[state]
      ,[create_time]
      ,[update_time]) select [contract_task_id]
      ,[contract_id]
      ,[pur_task_id]
      ,[submit_userid]
      ,[state]
      ,[create_time]
      ,[update_time]
FROM openquery(MYSQL, 'SELECT * FROM info_sys.proc_contract_task') 
set IDENTITY_INSERT proc_contract_task  OFF
go