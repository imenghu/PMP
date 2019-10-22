/*==============================sal_prod_deliver structure =============================*/
print 'dbo.sal_prod_deliver...'
if not exists (select * from sysobjects where id = object_id('dbo.sal_prod_deliver') and sysstat & 0xf = 3)
BEGIN
CREATE TABLE dbo.sal_prod_deliver
(
  prod_deliver_id int IDENTITY(1,1) not null ,
  order_detail_id int  null ,
  sale_order nvarchar(60) null ,
  mat_id int  null ,
  mat_code nvarchar(60) null ,
  mat_name nvarchar(60) null ,
  mat_spesc nvarchar(60) null ,
  deliver_stnum nvarchar(60) null ,
  deliver_stnum_unit nvarchar(60) null ,
  plate_number nvarchar(30) null ,
  trans_name nvarchar(60) null ,
  trans_mobile nvarchar(30) null ,
  consignee_addr nvarchar(100) null ,
  consignee_name nvarchar(60) null ,
  consignee_tel nvarchar(30) null ,
  deliver_time nvarchar(60) null ,
  deliver_remarks nvarchar(200) null ,
  state nchar(1) null DEFAULT((1)),
  create_time datetime2  null ,
  update_time datetime2  null ,
  CONSTRAINT PK_sal_prod_deliver PRIMARY KEY  CLUSTERED
  (
    prod_deliver_id
  )
)
END

GO

