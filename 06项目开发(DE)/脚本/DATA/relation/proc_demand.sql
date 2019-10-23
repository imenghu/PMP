delete from proc_demand_detail where not exists(select 1 from proc_demand where demand_id=proc_demand_detail.demand_id)
/*==================proc_demand_detail foreignkey ====================*/
PRINT 'proc_demand_detail:FK_proc_demand_detail_proc_demand'
if exists (select * from sysobjects where id = object_id('dbo.FK_proc_demand_detail_proc_demand') and sysstat & 0xff = 11)
  ALTER table proc_demand_detail DROP CONSTRAINT FK_proc_demand_detail_proc_demand
GO
  ALTER table proc_demand_detail ADD CONSTRAINT FK_proc_demand_detail_proc_demand FOREIGN KEY ( demand_id ) REFERENCES dbo.proc_demand ( demand_id )
GO

