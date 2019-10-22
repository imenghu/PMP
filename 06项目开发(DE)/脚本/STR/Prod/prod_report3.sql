/*==============================prod_report3 structure =============================*/
print 'dbo.prod_report3...'
if not exists (select * from sysobjects where id = object_id('dbo.prod_report3') and sysstat & 0xf = 3)
BEGIN
CREATE TABLE dbo.prod_report3
(
  report_id int IDENTITY(1,1) not null ,
  workshop nvarchar(60) null ,
  product_line nvarchar(60) null ,
  yield nvarchar(60) null ,
  Prod_id nvarchar(60) null ,
  Prod_name nvarchar(60) null ,
  spec nvarchar(60) null ,
  input_date datetime2  null ,
  today_saka_amount nvarchar(60) null ,
  today_product_num nvarchar(11) null ,
  today_loss nvarchar(255) null ,
  memo nvarchar(60) null ,
  user_id int  null ,
  org_id int  null ,
  state nchar(1) null ,
  create_time datetime2  null ,
  update_time datetime2  null ,
  CompanyName nvarchar(60) null ,
  CONSTRAINT PK_prod_report3 PRIMARY KEY  CLUSTERED
  (
    report_id
  )
)
END

GO

