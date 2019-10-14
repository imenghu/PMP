truncate table ctl_mat_unit
set IDENTITY_INSERT ctl_mat_unit  ON
go
insert INTO ctl_mat_unit ([mat_unit_id]
      ,[mat_id]
      ,[mat_unit_name]
      ,[numerator]
      ,[denominator]
      ,[base_unit_name]
      ,[if_base_unit]
      ,[state]
      ,[create_time]
      ,[update_time]) select [mat_unit_id]
      ,[mat_id]
      ,[mat_unit_name]
      ,[numerator]
      ,[denominator]
      ,[base_unit_name]
      ,[if_base_unit]
      ,[state]
      ,[create_time]
      ,[update_time]
FROM openquery(MYSQL, 'SELECT * FROM info_sys.ctl_mat_unit') 
set IDENTITY_INSERT ctl_mat_unit  OFF
go