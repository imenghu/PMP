/*==============================inv_matrefund structure =============================*/
print 'dbo.inv_matrefund...'
if not exists (select * from sysobjects where id = object_id('dbo.inv_matrefund') and sysstat & 0xf = 3)
BEGIN
CREATE TABLE dbo.inv_matrefund
(
  mat_refund_id int IDENTITY(1,1) not null ,
  org_id int  null ,
  out_userid int  null ,
  ref_org_id int  null ,
  ref_userid int  null ,
  piid nvarchar(100) null ,
  refund_state nchar(1) null ,
  state nchar(1) null ,
  refund_remarks nvarchar(200) null ,
  create_time nvarchar(100) null ,
  update_time nvarchar(100) null ,
  TaskID int  null ,
  RefundOrgName varchar(50) null ,
  RefundUserAccount varchar(50) null ,
  RefundUserName varchar(50) null ,
  Attachments varchar(500) null ,
  CreateUser varchar(50) null ,
  CreateUserName varchar(50) null ,
  UpdateUser varchar(50) null ,
  UpdateUserName varchar(50) null ,
  Company varchar(50) null ,
  CompanyName varchar(50) null ,
  Dept varchar(50) null ,
  DeptName varchar(50) null ,
  CONSTRAINT PK_inv_matrefund PRIMARY KEY  CLUSTERED
  (
    mat_refund_id
  )
)
END

GO

/*==============================inv_matrefund_detail structure =============================*/
print 'dbo.inv_matrefund_detail...'
if not exists (select * from sysobjects where id = object_id('dbo.inv_matrefund_detail') and sysstat & 0xf = 3)
BEGIN
CREATE TABLE dbo.inv_matrefund_detail
(
  matrefund_detail_id int IDENTITY(1,1) not null ,
  mat_refund_id int  not null ,
  depot_id int  not null ,
  depot_name nvarchar(60) not null ,
  org_id int  null ,
  inv_userid int  null ,
  ref_org_id int  null ,
  ref_userid int  null ,
  vendor_id int  not null ,
  vendor_code nvarchar(60) null ,
  vendor_name nvarchar(200) not null ,
  mat_id int  not null ,
  mat_code nvarchar(60) not null ,
  mat_name nvarchar(60) not null ,
  mat_spesc nvarchar(60) null ,
  refund_stnum nvarchar(30) not null ,
  refund_stnum_unit nvarchar(30) not null ,
  refund__time nvarchar(100) not null ,
  refund_remarks nvarchar(200) null ,
  state nchar(1) not null ,
  create_time nvarchar(100) null ,
  update_time nvarchar(100) null ,
  tests_id nvarchar(1000) null ,
  TaskID int  null ,
  CONSTRAINT PK_inv_matrefund_detail PRIMARY KEY  CLUSTERED
  (
    matrefund_detail_id
  )
)
END

GO

/*==================inv_matrefund_detail foreignkey ====================*/
PRINT 'inv_matrefund_detail:FK_inv_matrefund_detail_inv_matrefund'
if exists (select * from sysobjects where id = object_id('dbo.FK_inv_matrefund_detail_inv_matrefund') and sysstat & 0xff = 11)
  ALTER table inv_matrefund_detail DROP CONSTRAINT FK_inv_matrefund_detail_inv_matrefund
GO
  ALTER table inv_matrefund_detail ADD CONSTRAINT FK_inv_matrefund_detail_inv_matrefund FOREIGN KEY ( mat_refund_id ) REFERENCES dbo.inv_matrefund ( mat_refund_id )
GO

