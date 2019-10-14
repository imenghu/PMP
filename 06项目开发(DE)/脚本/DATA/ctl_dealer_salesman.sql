truncate table ctl_dealer_salesman
set IDENTITY_INSERT ctl_dealer_salesman  ON
go
insert INTO ctl_dealer_salesman ([ds_id]
      ,[salesman_id]
      ,[dealer_id]
      ,[create_userid]
      ,[ds_remarks]
      ,[state]
      ,[create_time]
      ,[update_time]) select [ds_id]
      ,[salesman_id]
      ,[dealer_id]
      ,[create_userid]
      ,[ds_remarks]
      ,[state]
      ,[create_time]
      ,[update_time]
FROM openquery(MYSQL, 'SELECT * FROM info_sys.ctl_dealer_salesman') 
set IDENTITY_INSERT ctl_dealer_salesman  OFF
go