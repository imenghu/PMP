/*==============================proc_contract_task structure =============================*/
print 'dbo.proc_contract_task...'
if not exists (select * from sysobjects where id = object_id('dbo.proc_contract_task') and sysstat & 0xf = 3)
BEGIN
CREATE TABLE dbo.proc_contract_task
(
  contract_task_id int IDENTITY(1,1) not null ,
  contract_id int  null ,
  pur_task_id nvarchar(60) not null ,
  submit_userid int  null ,
  state nchar(1) null ,
  create_time datetime2  null ,
  update_time datetime2  null ,
  TaskID int  null ,
  CONSTRAINT PK_proc_contract_task PRIMARY KEY  CLUSTERED
  (
    contract_task_id
  )
)
END

GO

