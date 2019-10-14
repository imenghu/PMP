/*==============================ctl_vendor_mat structure =============================*/
print 'dbo.ctl_vendor_mat...'
if not exists (select * from sysobjects where id = object_id('dbo.ctl_vendor_mat') and sysstat & 0xf = 3)
BEGIN
CREATE TABLE dbo.ctl_vendor_mat
(
  vendor_mat_id int IDENTITY(1,1) not null ,
  vendor_id int  not null ,
  mat_id int  not null ,
  mat_name nvarchar(60) not null ,
  mat_spec nvarchar(60) null ,
  create_userid int  null ,
  lastupdate_userid int  null ,
  state nchar(1) not null ,
  create_time datetime2  null ,
  update_time datetime2  null ,
  mat_code varchar(40) null ,
  CreateUserName varchar(50) null ,
  UpdateUserName varchar(50) null ,
  CONSTRAINT PK_ctl_vendor_mat PRIMARY KEY  CLUSTERED
  (
    vendor_mat_id
  )
)
END

GO

