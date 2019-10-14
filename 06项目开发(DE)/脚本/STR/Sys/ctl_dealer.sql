/*==============================ctl_dealer structure =============================*/
print 'dbo.ctl_dealer...'
if not exists (select * from sysobjects where id = object_id('dbo.ctl_dealer') and sysstat & 0xf = 3)
BEGIN
CREATE TABLE dbo.ctl_dealer
(
  dealer_id int IDENTITY(1,1) not null ,
  province_id nvarchar(60) null ,
  city_id nvarchar(60) null ,
  dealer_name nvarchar(200) null ,
  tax_cer_no nvarchar(30) null ,
  dealer_contact nvarchar(60) null ,
  dealer_tel nvarchar(30) null ,
  dealer_email nvarchar(30) null ,
  dealer_addr nvarchar(200) null ,
  dealer_zipcode nvarchar(20) null ,
  dealer_wechat nvarchar(20) null ,
  dealer_qq nvarchar(20) null ,
  dealer_remarks nvarchar(200) null ,
  state nchar(1) null ,
  create_userid int  not null ,
  create_time datetime2  not null ,
  update_time datetime2  null ,
  CreateUser varchar(50) null ,
  CreateUserName varchar(50) null ,
  UpdateUser varchar(50) null ,
  UpdateUserName varchar(50) null ,
  Company varchar(50) null ,
  CompanyName varchar(50) null ,
  CONSTRAINT PK_ctl_dealer PRIMARY KEY  CLUSTERED
  (
    dealer_id
  )
)
END

GO

