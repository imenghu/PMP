/*==============================ctl_mat_unit structure =============================*/
print 'dbo.ctl_mat_unit...'
if not exists (select * from sysobjects where id = object_id('dbo.ctl_mat_unit') and sysstat & 0xf = 3)
BEGIN
CREATE TABLE dbo.ctl_mat_unit
(
  mat_unit_id int IDENTITY(1,1) not null ,
  mat_id int  not null ,
  mat_unit_name nvarchar(40) not null ,
  numerator nvarchar(100) null ,
  denominator nvarchar(60) null ,
  base_unit_name nvarchar(60) not null ,
  if_base_unit nchar(1) null ,
  state nchar(1) null ,
  create_time datetime2  null ,
  update_time datetime2  null ,
  CONSTRAINT PK_ctl_mat_unit PRIMARY KEY  CLUSTERED
  (
    mat_unit_id
  )
)
END

GO

