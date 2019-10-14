truncate table ctl_depot
set IDENTITY_INSERT ctl_depot  ON
go
insert INTO ctl_depot ([depot_id]
      ,[org_id]
      ,[depot_name]
      ,[state]
      ,[create_time]
      ,[update_time]) select [depot_id]
      ,[org_id]
      ,[depot_name]
      ,[state]
      ,[create_time]
      ,[update_time]
FROM openquery(MYSQL, 'SELECT * FROM info_sys.ctl_depot') 
set IDENTITY_INSERT ctl_depot  OFF
go