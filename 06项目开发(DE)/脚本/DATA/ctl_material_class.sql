truncate table ctl_material_class
set IDENTITY_INSERT ctl_material_class  ON
go
insert INTO ctl_material_class ([class_id]
      ,[first_code]
      ,[first_name]
      ,[second_code]
      ,[second_name]
      ,[third_code]
      ,[third_name]
      ,[fourth_code]
      ,[fourth_name]
      ,[state]
      ,[create_time]
      ,[update_time]) select [class_id]
      ,[first_code]
      ,[first_name]
      ,[second_code]
      ,[second_name]
      ,[third_code]
      ,[third_name]
      ,[fourth_code]
      ,[fourth_name]
      ,[state]
      ,[create_time]
      ,[update_time]
FROM openquery(MYSQL, 'SELECT * FROM info_sys.ctl_material_class') 
set IDENTITY_INSERT ctl_material_class  OFF
go