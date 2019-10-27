/*=========================== View v_inv_prod =============================*/
print 'v_inv_prod' 
if exists (select * from sysobjects where id = object_id(N'[dbo].[v_inv_prod]') and sysstat & 0xf = 2)
     drop view [dbo].[v_inv_prod]
GO

CREATE VIEW dbo.v_inv_prod
AS
WITH A AS (SELECT   Company, CompanyName, depot_id, depot_name, mat_code, - SUM(CONVERT(float, out_stnum)) 
                                   AS out_stnum
                   FROM      dbo.inv_prod_out
                   GROUP BY CompanyName, Company, depot_id, depot_name, mat_code), B AS
    (SELECT   Company, CompanyName, depot_id, depot_name, mat_code, SUM(CONVERT(float, in_stnum)) AS out_stnum
     FROM      dbo.inv_prod_in
     GROUP BY Company, CompanyName, depot_id, depot_name, mat_code), C AS
    (SELECT   Company, CompanyName, depot_id, depot_name, mat_code, out_stnum
     FROM      A AS A_1
     UNION
     SELECT   Company, CompanyName, depot_id, depot_name, mat_code, out_stnum
     FROM      B AS B_1), D AS
    (SELECT   Company, CompanyName, depot_id, depot_name, mat_code, SUM(out_stnum) AS invnum
     FROM      C AS C_1
     GROUP BY Company, CompanyName, depot_id, depot_name, mat_code)
    SELECT   D_1.Company, D_1.CompanyName, D_1.depot_id, D_1.depot_name, D_1.mat_code, D_1.invnum, 
                    dbo.ctl_material.mat_name, dbo.ctl_material.mat_spec, dbo.ctl_material.base_unit
    FROM      D AS D_1 INNER JOIN
                    dbo.ctl_material ON D_1.mat_code = dbo.ctl_material.mat_code

GO
