/*=========================== View v_ctl_material_class_first =============================*/
print 'v_ctl_material_class_first' 
if exists (select * from sysobjects where id = object_id(N'[dbo].[v_ctl_material_class_first]') and sysstat & 0xf = 2)
     drop view [dbo].[v_ctl_material_class_first]
GO

CREATE VIEW dbo.v_ctl_material_class_first
AS
SELECT DISTINCT first_code, first_name
FROM      dbo.ctl_material_class

GO
