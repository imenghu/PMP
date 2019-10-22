delete from proc_contract_task where not exists(select 1 from proc_contract where contract_id=proc_contract_task.contract_id)
/*==================proc_contract_task foreignkey ====================*/
PRINT 'proc_contract_task:FK_proc_contract_task_proc_contract'
if exists (select * from sysobjects where id = object_id('dbo.FK_proc_contract_task_proc_contract') and sysstat & 0xff = 11)
  ALTER table proc_contract_task DROP CONSTRAINT FK_proc_contract_task_proc_contract
GO
  ALTER table proc_contract_task ADD CONSTRAINT FK_proc_contract_task_proc_contract FOREIGN KEY ( contract_id ) REFERENCES dbo.proc_contract ( contract_id )
GO
