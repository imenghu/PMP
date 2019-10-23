/*=========================== View v_proc_demand_arrival =============================*/
print 'v_proc_demand_arrival' 
if exists (select * from sysobjects where id = object_id(N'[dbo].[v_proc_demand_arrival]') and sysstat & 0xf = 2)
     drop view [dbo].[v_proc_demand_arrival]
GO

CREATE VIEW dbo.v_proc_demand_arrival
AS
SELECT   c.arrival_notice_id, c.contract_id, c.contract_code, c.pur_task_id, c.vendor_id, c.vendor_code, c.vendor_name, c.mat_id, 
                c.mat_code, c.mat_name, c.mat_spesc, c.arrival_slnum, c.arrival_slnum_unit, c.arrival_stnum, c.arrival_stnum_unit, 
                c.sl_st_scale, c.arrival_username, c.arrival_usertel, c.plan_arrival_price, c.plan_arrival_time, c.store_userid, c.if_tests, 
                c.submit_userid, c.notice_state, c.state, c.create_time, c.update_time, c.StoreUser, c.StoreUserName, c.CreateUser, 
                c.CreateUserName, c.Company, c.CompanyName, c.Dept, c.DeptName, a.demand_id
FROM      dbo.proc_demand_detail AS a INNER JOIN
                dbo.proc_pur_task AS b ON a.demand_detail_id = b.demand_detail_id INNER JOIN
                dbo.proc_arrival_notice AS c ON b.pur_task_id = c.pur_task_id

GO
