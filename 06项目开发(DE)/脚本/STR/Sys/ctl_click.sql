/*==============================ctl_click structure =============================*/
print 'dbo.ctl_click...'
if not exists (select * from sysobjects where id = object_id('dbo.ctl_click') and sysstat & 0xf = 3)
BEGIN
CREATE TABLE dbo.ctl_click
(
  click_id int  not null ,
  click_type nvarchar(60) null ,
  click_name nvarchar(60) null ,
  state nchar(1) null ,
  create_time datetime2  null ,
  update_time datetime2  null ,
  CONSTRAINT PK_ctl_click PRIMARY KEY  CLUSTERED
  (
    click_id
  )
)
END

GO

