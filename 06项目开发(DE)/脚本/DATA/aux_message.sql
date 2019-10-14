truncate table aux_message
set IDENTITY_INSERT aux_message  ON
go
insert INTO aux_message ([message_id]
      ,[fore_key_id]
      ,[message_class]
      ,[from_userid]
      ,[to_userid]
      ,[content]
      ,[state]
      ,[create_time]
      ,[update_time]) select [message_id]
      ,[fore_key_id]
      ,[message_class]
      ,[from_userid]
      ,[to_userid]
      ,[content]
      ,[state]
      ,[create_time]
      ,[update_time]
FROM openquery(MYSQL, 'SELECT * FROM info_sys.aux_message') 
set IDENTITY_INSERT aux_message  OFF
go