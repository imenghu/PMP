/*==============================sal_record structure =============================*/
print 'dbo.sal_record...'
if not exists (select * from sysobjects where id = object_id('dbo.sal_record') and sysstat & 0xf = 3)
BEGIN
CREATE TABLE dbo.sal_record
(
  record_id int  null ,
  record_date datetime2  null ,
  for_key_id int  null ,
  customer_code nvarchar(500) null ,
  customer_name nvarchar(500) null ,
  record_money float  null ,
  initial_money float  null ,
  final_money float  null ,
  summary nvarchar(500) null ,
  record_flag int  null ,
  create_time datetime2  null 
)
END

GO

