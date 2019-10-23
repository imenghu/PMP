truncate table ctl_area
--set IDENTITY_INSERT ctl_area  ON
go
insert INTO ctl_area ([id]
      ,[name]
      ,[arealevel]
      ,[parent_id]
      ,[state]
      ,[area_id]
      ,[area_name]
      ,[create_time]
      ,[update_time]) select [id]
      ,[name]
      ,[arealevel]
      ,[parent_id]
      ,[state]
      ,[area_id]
      ,[area_name]
      ,[create_time]
      ,[update_time]
FROM openquery(MYSQL, 'SELECT * FROM info_sys.ctl_area') 
--set IDENTITY_INSERT ctl_area  OFF
go