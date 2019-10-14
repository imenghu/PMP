truncate table ctl_salesman
set IDENTITY_INSERT ctl_salesman  ON
go
insert INTO ctl_salesman ([salesman_id]
      ,[userid]
      ,[province_id]
      ,[city_id]
      ,[salesman_name]
      ,[salesman_tel]
      ,[salesman_email]
      ,[salesman_addr]
      ,[create_userid]
      ,[salesman_remarks]
      ,[state]
      ,[create_time]
      ,[update_time]) select [salesman_id]
      ,[userid]
      ,[province_id]
      ,[city_id]
      ,[salesman_name]
      ,[salesman_tel]
      ,[salesman_email]
      ,[salesman_addr]
      ,[create_userid]
      ,[salesman_remarks]
      ,[state]
      ,[create_time]
      ,[update_time]
FROM openquery(MYSQL, 'SELECT * FROM info_sys.ctl_salesman') 
set IDENTITY_INSERT ctl_salesman  OFF
go