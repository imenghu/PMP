truncate table ctl_vendor_mat
set IDENTITY_INSERT ctl_vendor_mat  ON
go
insert INTO ctl_vendor_mat ([vendor_mat_id]
      ,[vendor_id]
      ,[mat_id]
      ,[mat_name]
      ,[mat_spec]
      ,[create_userid]
      ,[lastupdate_userid]
      ,[state]
      ,[create_time]
      ,[update_time]) select [vendor_mat_id]
      ,[vendor_id]
      ,[mat_id]
      ,[mat_name]
      ,[mat_spec]
      ,[create_userid]
      ,[lastupdate_userid]
      ,[state]
      ,[create_time]
      ,[update_time]
FROM openquery(MYSQL, 'SELECT * FROM info_sys.ctl_vendor_mat') 
set IDENTITY_INSERT ctl_vendor_mat  OFF
go