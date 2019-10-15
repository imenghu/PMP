/*==============================ctl_material_class structure =============================*/
print 'dbo.ctl_material_class...'
if not exists (select * from sysobjects where id = object_id('dbo.ctl_material_class') and sysstat & 0xf = 3)
BEGIN
CREATE TABLE dbo.ctl_material_class
(
  class_id int IDENTITY(1,1) not null ,
  first_code nvarchar(4) null ,
  first_name nvarchar(40) null ,
  second_code nvarchar(4) null ,
  second_name nvarchar(40) null ,
  third_code nvarchar(4) null ,
  third_name nvarchar(40) null ,
  fourth_code nvarchar(4) null ,
  fourth_name nvarchar(40) null ,
  state nchar(1) null DEFAULT((1)),
  create_time datetime2  null ,
  update_time datetime2  null ,
  CONSTRAINT PK_ctl_material_class PRIMARY KEY  CLUSTERED
  (
    class_id
  )
)
END

GO

