/*==============================proc_tests_index structure =============================*/
print 'dbo.proc_tests_index...'
if not exists (select * from sysobjects where id = object_id('dbo.proc_tests_index') and sysstat & 0xf = 3)
BEGIN
CREATE TABLE dbo.proc_tests_index
(
  index_id int IDENTITY(1,1) not null ,
  mat_id int  null ,
  index_name nvarchar(60) null ,
  rang_value nvarchar(100) null ,
  create_time datetime2  null ,
  update_time datetime2  null ,
  state char(255) null ,
  CONSTRAINT PK_proc_tests_index PRIMARY KEY  CLUSTERED
  (
    index_id
  )
)
END

GO

