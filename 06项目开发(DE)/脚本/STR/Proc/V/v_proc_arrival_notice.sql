/*=========================== View v_proc_arrival_notice =============================*/
print 'v_proc_arrival_notice' 
if exists (select * from sysobjects where id = object_id(N'[dbo].[v_proc_arrival_notice]') and sysstat & 0xf = 2)
     drop view [dbo].[v_proc_arrival_notice]
GO

CREATE VIEW dbo.v_proc_arrival_notice
AS
SELECT   dbo.proc_arrival_notice.arrival_notice_id, dbo.proc_arrival_notice.contract_id, dbo.proc_arrival_notice.contract_code, 
                dbo.proc_arrival_notice.pur_task_id, dbo.proc_arrival_notice.vendor_id, dbo.proc_arrival_notice.vendor_code, 
                dbo.proc_arrival_notice.vendor_name, dbo.proc_arrival_notice.mat_id, dbo.proc_arrival_notice.mat_code, 
                dbo.proc_arrival_notice.mat_name, dbo.proc_arrival_notice.mat_spesc, dbo.proc_arrival_notice.arrival_slnum, 
                dbo.proc_arrival_notice.arrival_slnum_unit, dbo.proc_arrival_notice.arrival_stnum, 
                dbo.proc_arrival_notice.arrival_stnum_unit, dbo.proc_arrival_notice.sl_st_scale, 
                dbo.proc_arrival_notice.arrival_username, dbo.proc_arrival_notice.arrival_usertel, 
                dbo.proc_arrival_notice.plan_arrival_price, dbo.proc_arrival_notice.plan_arrival_time, 
                dbo.proc_arrival_notice.store_userid, dbo.proc_arrival_notice.if_tests, dbo.proc_arrival_notice.submit_userid, 
                dbo.proc_arrival_notice.notice_state, dbo.proc_arrival_notice.state, dbo.proc_arrival_notice.create_time, 
                dbo.proc_arrival_notice.update_time, dbo.proc_arrival_notice.StoreUser, dbo.proc_arrival_notice.StoreUserName, 
                dbo.proc_arrival_notice.CreateUser, dbo.proc_arrival_notice.CreateUserName, dbo.proc_arrival_notice.Company, 
                dbo.proc_arrival_notice.CompanyName, dbo.proc_arrival_notice.Dept, dbo.proc_arrival_notice.DeptName, 
                dbo.inv_in_detail.in_detail_id
FROM      dbo.proc_arrival_notice LEFT OUTER JOIN
                dbo.inv_in_detail ON dbo.proc_arrival_notice.arrival_notice_id = dbo.inv_in_detail.arrival_notice_id

GO
