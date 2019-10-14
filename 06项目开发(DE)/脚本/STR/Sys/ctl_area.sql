/*==============================ctl_area structure =============================*/
print 'dbo.ctl_area...'
if not exists (select * from sysobjects where id = object_id('dbo.ctl_area') and sysstat & 0xf = 3)
BEGIN
CREATE TABLE dbo.ctl_area
(
  id int  not null ,
  name nvarchar(100) not null ,
  arealevel numeric(3,0) not null ,
  parent_id int  null ,
  state nchar(1) null ,
  area_id int  null ,
  area_name nvarchar(100) null ,
  create_time datetime2  null ,
  update_time datetime2  null ,
  CONSTRAINT PK_ctl_area PRIMARY KEY  CLUSTERED
  (
    id
  )
)
END

GO

