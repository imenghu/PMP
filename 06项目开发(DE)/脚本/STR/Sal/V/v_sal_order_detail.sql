/*=========================== View v_sal_order_detail =============================*/
print 'v_sal_order_detail' 
if exists (select * from sysobjects where id = object_id(N'[dbo].[v_sal_order_detail]') and sysstat & 0xf = 2)
     drop view [dbo].[v_sal_order_detail]
GO

CREATE VIEW dbo.v_sal_order_detail
AS
SELECT   a.order_master_id, a.piid, a.sale_order, a.dealer_id, a.dealer_name, a.consignee_name, a.consignee_tel, 
                a.consignee_addr, a.total_price, a.pay_price, a.salesman_id, a.salesman_name, a.salesman_tel, a.sales_remarks, 
                a.sales_state, a.close_order, a.state, a.pay_state, a.create_time, a.update_time, a.TaskID, a.Dept, a.DeptName, 
                a.Company, a.CompanyName, a.CreateUser, a.CreateUserName, a.Attachment, b.order_detail_id, b.mat_name, 
                b.mat_code, b.mat_spesc, b.order_stnum, b.order_stnum_unit, ISNULL
                    ((SELECT   SUM(CONVERT(decimal, deliver_stnum)) AS Expr1
                      FROM      dbo.sal_deliver_details
                      WHERE   (order_detail_id = b.order_detail_id)), 0) AS deliver_stnum, b.mat_id, b.item_price, b.Price, b.TaxRate, 
                b.TaxNum, b.IsFree
FROM      dbo.sal_order_master AS a LEFT OUTER JOIN
                dbo.sal_order_detail AS b ON a.order_master_id = b.order_master_id

GO
