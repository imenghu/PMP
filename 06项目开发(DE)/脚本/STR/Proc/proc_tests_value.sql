/*==============================proc_tests_value structure =============================*/
print 'dbo.proc_tests_value...'
if not exists (select * from sysobjects where id = object_id('dbo.proc_tests_value') and sysstat & 0xf = 3)
BEGIN
CREATE TABLE dbo.proc_tests_value
(
  value_id int IDENTITY(1,1) not null ,
  tests_id int  null ,
  index_id int  null ,
  index_name nvarchar(100) null ,
  rang_value nvarchar(100) null ,
  tests_value nvarchar(60) null ,
  create_time datetime2  null ,
  update_time datetime2  null ,
  state char(255) null ,
  CONSTRAINT PK_proc_tests_value PRIMARY KEY  CLUSTERED
  (
    value_id
  )
)
END

GO

