/*=========================== View v_inv_prod =============================*/
print 'v_inv_prod' 
if exists (select * from sysobjects where id = object_id(N'[dbo].[v_inv_prod]') and sysstat & 0xf = 2)
     drop view [dbo].[v_inv_prod]
GO

CREATE VIEW dbo.v_inv_prod
AS
WITH A AS (SELECT   depot_id, depot_name, mat_code, mat_name, mat_spec, in_stnum_unit, SUM(CONVERT(float, in_stnum)) 
                                   AS in_stnum
                   FROM      dbo.inv_prod_in
                   GROUP BY depot_id, depot_name, mat_code, mat_name, mat_spec, in_stnum_unit), B AS
    (SELECT   CompanyName, mat_code, SUM(CONVERT(float, out_stnum)) AS out_stnum
     FROM      dbo.inv_prod_out
     GROUP BY mat_code, CompanyName)
    SELECT   A_1.depot_id, A_1.depot_name, A_1.mat_code, A_1.mat_name, A_1.mat_spec, A_1.in_stnum_unit, A_1.in_stnum, 
                    B_1.CompanyName, B_1.out_stnum, A_1.in_stnum - ISNULL(B_1.out_stnum, 0) AS invnum
    FROM      A AS A_1 LEFT OUTER JOIN
                    B AS B_1 ON A_1.mat_code = B_1.mat_code

GO
