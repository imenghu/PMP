/*==============================mapdata structure =============================*/
print 'dbo.mapdata...'
if not exists (select * from sysobjects where id = object_id('dbo.mapdata') and sysstat & 0xf = 3)
BEGIN
CREATE TABLE dbo.mapdata
(
  id int  null ,
  province nvarchar(100) null ,
  company nvarchar(200) null 
)
END

GO

