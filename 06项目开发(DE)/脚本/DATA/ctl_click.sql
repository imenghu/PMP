truncate table ctl_click
--set IDENTITY_INSERT ctl_click  ON
go
insert INTO ctl_click ([click_id]
      ,[click_type]
      ,[click_name]
      ,[state]
      ,[create_time]
      ,[update_time]) select [click_id]
      ,[click_type]
      ,[click_name]
      ,[state]
      ,[create_time]
      ,[update_time]
FROM openquery(MYSQL, 'SELECT * FROM info_sys.ctl_click') 
--set IDENTITY_INSERT ctl_click  OFF
go