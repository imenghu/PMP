truncate table ctl_material

set IDENTITY_INSERT ctl_material  ON
go
insert INTO ctl_material (mat_id
      ,mat_code
      ,first_code
      ,first_name
      ,second_code
      ,second_name
      ,third_code
      ,third_name
      ,fourth_code
      ,fourth_name
      ,mat_name
      ,mat_alis
      ,mat_spec
      ,base_unit
      ,if_drybulk
      ,if_group_pur
      ,if_greement
      ,mast_state
      ,create_userid
      ,lastupdate_userid
      ,state
      ,create_time
      ,update_time
      ,remark) select *
FROM openquery(MYSQL, 'SELECT mat_id
      ,mat_code
      ,first_code
      ,first_name
      ,second_code
      ,second_name
      ,third_code
      ,third_name
      ,fourth_code
      ,fourth_name
      ,mat_name
      ,mat_alis
      ,mat_spec
      ,base_unit
      ,cast(if_drybulk as char(1)) as if_drybulk
      ,if_group_pur
      ,if_greement
      ,mast_state
      ,create_userid
      ,lastupdate_userid
      ,state
      ,create_time
      ,update_time
      ,remark FROM info_sys.ctl_material') 
set IDENTITY_INSERT ctl_material  OFF
go