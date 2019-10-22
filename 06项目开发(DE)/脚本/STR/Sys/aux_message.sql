/*==============================aux_message structure =============================*/
print 'dbo.aux_message...'
if not exists (select * from sysobjects where id = object_id('dbo.aux_message') and sysstat & 0xf = 3)
BEGIN
CREATE TABLE dbo.aux_message
(
  message_id int  null ,
  fore_key_id int  null ,
  message_class nvarchar(60) null ,
  from_userid int  null ,
  to_userid int  null ,
  content nvarchar(200) null ,
  state nvarchar(1) null ,
  create_time datetime2  null ,
  update_time datetime2  null 
)
END

GO

