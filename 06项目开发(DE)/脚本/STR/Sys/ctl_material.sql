/*==============================ctl_material structure =============================*/
print 'dbo.ctl_material...'
if not exists (select * from sysobjects where id = object_id('dbo.ctl_material') and sysstat & 0xf = 3)
BEGIN
CREATE TABLE dbo.ctl_material
(
  mat_id int IDENTITY(1,1) not null ,
  mat_code varchar(40) null ,
  first_code varchar(12) null ,
  first_name varchar(40) null ,
  second_code varchar(12) null ,
  second_name varchar(40) null ,
  third_code varchar(12) null ,
  third_name varchar(40) null ,
  fourth_code varchar(12) null ,
  fourth_name varchar(40) null ,
  mat_name varchar(100) null ,
  mat_alis varchar(60) null ,
  mat_spec varchar(60) null ,
  base_unit varchar(12) null ,
  if_drybulk char(1) null ,
  if_group_pur char(1) null ,
  if_greement char(1) null ,
  mast_state char(1) null ,
  create_userid int  null ,
  lastupdate_userid int  null ,
  state char(1) null ,
  create_time datetime  null ,
  update_time datetime  null ,
  remark varchar(100) null ,
  CreateUser varchar(50) null ,
  CreateUserName varchar(50) null ,
  UpdateUser varchar(50) null ,
  UpdateUserName varchar(50) null ,
  CONSTRAINT PK_ctl_material PRIMARY KEY  CLUSTERED
  (
    mat_id
  )
)
END

GO

