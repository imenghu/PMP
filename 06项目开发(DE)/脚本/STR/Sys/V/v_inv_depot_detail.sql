/*=========================== View v_inv_depot_detail =============================*/
print 'v_inv_depot_detail' 
if exists (select * from sysobjects where id = object_id(N'[dbo].[v_inv_depot_detail]') and sysstat & 0xf = 2)
     drop view [dbo].[v_inv_depot_detail]
GO

CREATE VIEW dbo.v_inv_depot_detail
AS
SELECT   org_id, depot_id, depot_name, mat_id, mat_code, mat_name, mat_spec, Company, CompanyName, 
                SUM(CONVERT(decimal, depot_mat_num)) AS depot_mat_num, depot_stnum_unit
FROM      dbo.inv_depot_detail
WHERE   (state = 1)
GROUP BY org_id, depot_id, depot_name, mat_id, mat_code, mat_name, mat_spec, depot_mat_num, Company, CompanyName, 
                depot_stnum_unit

GO
