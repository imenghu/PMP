/*==============================proc_arrival_notice structure =============================*/
print 'dbo.proc_arrival_notice...'
if not exists (select * from sysobjects where id = object_id('dbo.proc_arrival_notice') and sysstat & 0xf = 3)
BEGIN
CREATE TABLE dbo.proc_arrival_notice
(
  arrival_notice_id int IDENTITY(1,1) not null ,
  contract_id int  null ,
  contract_code nvarchar(60) null ,
  pur_task_id int  null ,
  vendor_id nvarchar(11) null ,
  vendor_code nvarchar(60) null ,
  vendor_name nvarchar(100) not null ,
  mat_id int  null ,
  mat_code nvarchar(60) not null ,
  mat_name nvarchar(60) not null ,
  mat_spesc nvarchar(60) null ,
  arrival_slnum nvarchar(30) not null ,
  arrival_slnum_unit nvarchar(30) not null ,
  arrival_stnum nvarchar(30) not null ,
  arrival_stnum_unit nvarchar(30) not null ,
  sl_st_scale nvarchar(20) not null ,
  arrival_username nvarchar(40) null ,
  arrival_usertel nvarchar(11) null ,
  plan_arrival_price nvarchar(10) null ,
  plan_arrival_time nvarchar(40) not null ,
  store_userid int  null ,
  if_tests nchar(1) not null ,
  submit_userid int  null ,
  notice_state nvarchar(60) not null ,
  state nchar(1) not null DEFAULT((1)),
  create_time datetime2  null ,
  update_time datetime2  null ,
  StoreUser varchar(50) null ,
  StoreUserName varchar(50) null ,
  CreateUser varchar(50) null ,
  CreateUserName varchar(50) null ,
  CONSTRAINT PK_proc_arrival_notice PRIMARY KEY  CLUSTERED
  (
    arrival_notice_id
  )
)
END

GO

