/*==============================sal_order_master structure =============================*/
print 'dbo.sal_order_master...'
if not exists (select * from sysobjects where id = object_id('dbo.sal_order_master') and sysstat & 0xf = 3)
BEGIN
CREATE TABLE dbo.sal_order_master
(
  order_master_id int IDENTITY(1,1) not null ,
  piid nvarchar(100) null ,
  sale_order nvarchar(60) null ,
  dealer_id int  null ,
  dealer_name nvarchar(200) null ,
  consignee_name nvarchar(60) null ,
  consignee_tel nvarchar(20) null ,
  consignee_addr nvarchar(200) null ,
  total_price nvarchar(60) null ,
  pay_price nvarchar(60) null ,
  salesman_id int  null ,
  salesman_name nvarchar(60) null ,
  salesman_tel nvarchar(20) null ,
  sales_remarks nvarchar(200) null ,
  sales_state nvarchar(30) null ,
  close_order nchar(1) null ,
  state nchar(1) null ,
  pay_state nvarchar(2) null ,
  create_time datetime2  null ,
  update_time datetime2  null ,
  TaskID int  null ,
  Dept varchar(50) null ,
  DeptName varchar(50) null ,
  Company varchar(50) null ,
  CompanyName varchar(50) null ,
  CreateUser varchar(50) null ,
  CreateUserName varchar(50) null ,
  Attachment varchar(500) null ,
  CONSTRAINT PK_sal_order_master PRIMARY KEY  CLUSTERED
  (
    order_master_id
  )
)
END

GO

/*==============================sal_order_detail structure =============================*/
print 'dbo.sal_order_detail...'
if not exists (select * from sysobjects where id = object_id('dbo.sal_order_detail') and sysstat & 0xf = 3)
BEGIN
CREATE TABLE dbo.sal_order_detail
(
  order_detail_id int IDENTITY(1,1) not null ,
  order_master_id int  not null ,
  mat_id int  null ,
  mat_code nvarchar(60) null ,
  mat_name nvarchar(60) null ,
  mat_spesc nvarchar(60) null ,
  order_stnum nvarchar(60) null ,
  order_stnum_unit nvarchar(60) null ,
  item_price nvarchar(60) null ,
  sales_remarks nvarchar(200) null ,
  close_order nchar(1) null ,
  state nchar(1) null DEFAULT((1)),
  create_time datetime2  null ,
  update_time datetime2  null ,
  TaskID int  null ,
  CONSTRAINT PK_sal_order_detail PRIMARY KEY  CLUSTERED
  (
    order_detail_id
  )
)
END

GO