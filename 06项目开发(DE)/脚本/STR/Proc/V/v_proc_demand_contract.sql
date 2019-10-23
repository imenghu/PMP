/*=========================== View v_proc_demand_contract =============================*/
print 'v_proc_demand_contract' 
if exists (select * from sysobjects where id = object_id(N'[dbo].[v_proc_demand_contract]') and sysstat & 0xf = 2)
     drop view [dbo].[v_proc_demand_contract]
GO

CREATE VIEW dbo.v_proc_demand_contract
AS
SELECT   m.contract_id, m.org_id, m.contract_code, m.contract_type, m.contract_name, m.piid, m.vendor_id, m.vendor_code, 
                m.vendor_name, m.sign_userid, m.if_outsource, m.total_price, m.submit_userid, m.perform_info, m.approval_state, 
                m.state, m.create_time, m.update_time, m.TaskID, m.Company, m.CompanyName, m.Dept, m.DeptName, m.Attachment, 
                m.SignUserAccount, m.SignUserName, m.CreateUser, m.CreateUserName, n.demand_id
FROM      dbo.proc_contract AS m INNER JOIN
                    (SELECT DISTINCT a.demand_id, c.contract_id
                     FROM      dbo.proc_demand_detail AS a INNER JOIN
                                     dbo.proc_pur_task AS b ON a.demand_detail_id = b.demand_detail_id INNER JOIN
                                     dbo.proc_contract_task AS c ON b.pur_task_id = c.pur_task_id) AS n ON m.contract_id = n.contract_id

GO
