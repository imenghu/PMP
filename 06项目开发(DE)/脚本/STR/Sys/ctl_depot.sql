/*==============================ctl_depot structure =============================*/
print 'dbo.ctl_depot...'
if not exists (select * from sysobjects where id = object_id('dbo.ctl_depot') and sysstat & 0xf = 3)
BEGIN
CREATE TABLE dbo.ctl_depot
(
  depot_id int IDENTITY(1,1) not null ,
  org_id int  null ,
  depot_name nvarchar(100) null ,
  state nchar(1) null DEFAULT((1)),
  create_time datetime2  null ,
  update_time datetime2  null ,
  CreateUser varchar(50) null ,
  CreateUserName varchar(50) null ,
  UpdateUser varchar(50) null ,
  UpdateUserName varchar(50) null ,
  Company varchar(50) null ,
  CompanyName varchar(50) null ,
  Dept varchar(50) null ,
  DeptName varchar(50) null ,
  CONSTRAINT PK_ctl_depot PRIMARY KEY  CLUSTERED
  (
    depot_id
  )
)
END

GO

