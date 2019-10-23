/*=========================== View v_proc_demand_task =============================*/
print 'v_proc_demand_task' 
if exists (select * from sysobjects where id = object_id(N'[dbo].[v_proc_demand_task]') and sysstat & 0xf = 2)
     drop view [dbo].[v_proc_demand_task]
GO

CREATE VIEW dbo.v_proc_demand_detail_task
AS
SELECT   dbo.proc_pur_task.*, dbo.proc_demand_detail.demand_id
FROM      dbo.proc_demand_detail INNER JOIN
                dbo.proc_pur_task ON dbo.proc_demand_detail.demand_detail_id = dbo.proc_pur_task.demand_detail_id

GO
