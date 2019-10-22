/*==============================proc_material_group structure =============================*/
print 'dbo.proc_material_group...'
if not exists (select * from sysobjects where id = object_id('dbo.proc_material_group') and sysstat & 0xf = 3)
BEGIN
CREATE TABLE dbo.proc_material_group
(
  id int IDENTITY(1,1) not null ,
  first_code nvarchar(4) null ,
  first_name nvarchar(40) null ,
  second_code nvarchar(4) null ,
  second_name nvarchar(40) null ,
  third_code nvarchar(4) null ,
  third_name nvarchar(40) null ,
  fourth_code nvarchar(4) null ,
  fourth_name nvarchar(40) null ,
  if_urg varchar(20) null ,
  plan_price varchar(60) null ,
  item_price varchar(20) null ,
  CONSTRAINT PK_proc_material_group PRIMARY KEY  CLUSTERED
  (
    id
  )
)
END

GO

