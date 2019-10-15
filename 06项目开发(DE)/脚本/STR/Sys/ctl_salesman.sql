/*==============================ctl_salesman structure =============================*/
print 'dbo.ctl_salesman...'
if not exists (select * from sysobjects where id = object_id('dbo.ctl_salesman') and sysstat & 0xf = 3)
BEGIN
CREATE TABLE dbo.ctl_salesman
(
  salesman_id int IDENTITY(1,1) not null ,
  userid int  not null ,
  province_id int  null ,
  city_id int  null ,
  salesman_name nvarchar(60) not null ,
  salesman_tel nvarchar(30) not null ,
  salesman_email nvarchar(30) null ,
  salesman_addr nvarchar(200) null ,
  create_userid int  not null ,
  salesman_remarks nvarchar(200) null ,
  state nchar(1) not null DEFAULT((1)),
  create_time datetime2  not null ,
  update_time datetime2  null ,
  CreateUser varchar(50) null ,
  CreateUserName varchar(50) null ,
  UpdateUser varchar(50) null ,
  UpdateUserName varchar(50) null ,
  Company varchar(50) null ,
  CompanyName varchar(50) null ,
  SalesmanAccount varchar(50) null ,
  CONSTRAINT PK_ctl_salesman PRIMARY KEY  CLUSTERED
  (
    salesman_id
  )
)
END

GO

