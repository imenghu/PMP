/*==============================invoice_type structure =============================*/
print 'dbo.invoice_type...'
if not exists (select * from sysobjects where id = object_id('dbo.invoice_type') and sysstat & 0xf = 3)
BEGIN
CREATE TABLE dbo.invoice_type
(
  id int  null ,
  type_code int  null ,
  type nvarchar(20) null 
)
END

GO

