/*==============================proc_contract structure =============================*/
print 'dbo.proc_contract...'
if not exists (select * from sysobjects where id = object_id('dbo.proc_contract') and sysstat & 0xf = 3)
BEGIN
CREATE TABLE dbo.proc_contract
(
  contract_id int IDENTITY(1,1) not null ,
  org_id int  null ,
  contract_code nvarchar(60) null ,
  contract_type nvarchar(40) null ,
  contract_name nvarchar(60) null ,
  piid nvarchar(100) null ,
  vendor_id int  null ,
  vendor_code nvarchar(60) null ,
  vendor_name nvarchar(60) null ,
  sign_userid int  null ,
  if_outsource nvarchar(60) null ,
  total_price nvarchar(20) null ,
  submit_userid int  null ,
  perform_info nvarchar(40) null ,
  approval_state nvarchar(10) null ,
  state nchar(1) null ,
  create_time datetime2  null ,
  update_time datetime2  null ,
  TaskID int  null ,
  Company varchar(50) null ,
  CompanyName varchar(50) null ,
  Dept varchar(50) null ,
  DeptName varchar(50) null ,
  Attachment varchar(500) null ,
  SignUserAccount varchar(50) null ,
  SignUserName varchar(50) null ,
  CreateUser varchar(50) null ,
  CreateUserName varchar(50) null ,
  CONSTRAINT PK_proc_contract PRIMARY KEY  CLUSTERED
  (
    contract_id
  )
)
END

GO

