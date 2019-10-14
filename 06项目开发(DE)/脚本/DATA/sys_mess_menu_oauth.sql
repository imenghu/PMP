truncate table sys_mess_menu_oauth
set IDENTITY_INSERT sys_mess_menu_oauth  ON
go
insert INTO sys_mess_menu_oauth ([menu_oauth_id]
      ,[menu_id]
      ,[org_id]
      ,[role_id]
      ,[state]
      ,[create_time]
      ,[update_time]) select [menu_oauth_id]
      ,[menu_id]
      ,[org_id]
      ,[role_id]
      ,[state]
      ,[create_time]
      ,[update_time]
FROM openquery(MYSQL, 'SELECT * FROM info_sys.sys_mess_menu_oauth') 
set IDENTITY_INSERT sys_mess_menu_oauth  OFF
go