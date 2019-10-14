truncate table sys_mess_menu
set IDENTITY_INSERT sys_mess_menu  ON
go
insert INTO sys_mess_menu ([menu_id]
      ,[menu_name]
      ,[high_menu_id]
      ,[menu_level]
      ,[menu_url]
      ,[menu_remark]
      ,[order_num]
      ,[if_last_menu]
      ,[state]
      ,[create_time]
      ,[update_time]) select [menu_id]
      ,[menu_name]
      ,[high_menu_id]
      ,[menu_level]
      ,[menu_url]
      ,[menu_remark]
      ,[order_num]
      ,[if_last_menu]
      ,[state]
      ,[create_time]
      ,[update_time]
FROM openquery(MYSQL, 'SELECT * FROM info_sys.sys_mess_menu') 
set IDENTITY_INSERT sys_mess_menu  OFF
go