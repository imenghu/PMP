truncate table aux_annex
set IDENTITY_INSERT aux_annex  ON
go
insert INTO aux_annex ([annex_id]
      ,[fore_key_id]
      ,[annex_class]
      ,[annex_orgid]
      ,[annex_userid]
      ,[node_id]
      ,[annex_name]
      ,[annex_path]
      ,[annex_suffix_name]
      ,[state]
      ,[create_time]
      ,[update_time]) select [annex_id]
      ,[fore_key_id]
      ,[annex_class]
      ,[annex_orgid]
      ,[annex_userid]
      ,[node_id]
      ,[annex_name]
      ,[annex_path]
      ,[annex_suffix_name]
      ,[state]
      ,[create_time]
      ,[update_time]
FROM openquery(MYSQL, 'SELECT * FROM info_sys.aux_annex') 
set IDENTITY_INSERT aux_annex  OFF
go