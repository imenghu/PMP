/*==============================sal_deliver_details structure =============================*/
print 'dbo.sal_deliver_details...'
if not exists (select * from sysobjects where id = object_id('dbo.sal_deliver_details') and sysstat & 0xf = 3)
BEGIN
CREATE TABLE dbo.sal_deliver_details
(
  deliver_detail_id int IDENTITY(1,1) not null ,
  deliver_date datetime2  null ,
  deliver_name nvarchar(500) null ,
  deliver_number float  null ,
  depot_id int  null ,
  depot_name nvarchar(500) null ,
  name nvarchar(500) null ,
  dealer_id int  null ,
  customer_code nvarchar(500) null ,
  customer_name nvarchar(500) null ,
  receiving_address nvarchar(500) null ,
  receiver nvarchar(500) null ,
  receiving_mobile_phone nvarchar(500) null ,
  consignor nvarchar(500) null ,
  deliver_no nvarchar(500) null ,
  summary nvarchar(500) null ,
  createdate datetime2  null ,
  updatedate datetime2  null ,
  state nvarchar(2) null ,
  Dept varchar(50) null ,
  DeptName varchar(50) null ,
  Company varchar(50) null ,
  CompanyName varchar(50) null ,
  CreateUser varchar(50) null ,
  CreateUserName varchar(50) null ,
  order_detail_id int  null ,
  sale_order nvarchar(60) null ,
  mat_id int  null ,
  mat_code nvarchar(60) null ,
  mat_spesc nvarchar(60) null ,
  deliver_stnum nvarchar(60) null ,
  deliver_stnum_unit nvarchar(60) null ,
  plate_number nvarchar(30) null ,
  trans_name nvarchar(60) null ,
  trans_mobile nvarchar(30) null ,
  CONSTRAINT PK_sal_deliver_details PRIMARY KEY  CLUSTERED
  (
    deliver_detail_id
  )
)
END

GO

