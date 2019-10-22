/*=========================== View v_ctl_material_prod =============================*/
print 'v_ctl_material_prod' 
if exists (select * from sysobjects where id = object_id(N'[dbo].[v_ctl_material_prod]') and sysstat & 0xf = 2)
     drop view [dbo].[v_ctl_material_prod]
GO

CREATE VIEW dbo.v_ctl_material_prod
AS
SELECT   dbo.ctl_material.mat_id, dbo.ctl_material.mat_code, dbo.ctl_material.first_code, dbo.ctl_material.first_name, 
                dbo.ctl_material.second_code, dbo.ctl_material.second_name, dbo.ctl_material.third_code, dbo.ctl_material.third_name, 
                dbo.ctl_material.fourth_code, dbo.ctl_material.fourth_name, dbo.ctl_material.mat_name, dbo.ctl_material.mat_alis, 
                dbo.ctl_material.mat_spec, dbo.ctl_material.base_unit, dbo.ctl_material.if_drybulk, dbo.ctl_material.if_group_pur, 
                dbo.ctl_material.if_greement, dbo.ctl_material.mast_state, dbo.ctl_material.create_userid, 
                dbo.ctl_material.lastupdate_userid, dbo.ctl_material.state, dbo.ctl_material.create_time, dbo.ctl_material.update_time, 
                dbo.ctl_material.remark, dbo.ctl_material.CreateUser, dbo.ctl_material.CreateUserName, dbo.ctl_material.UpdateUser, 
                dbo.ctl_material.UpdateUserName, dbo.ctl_mat_unit.mat_unit_name, dbo.ctl_mat_unit.numerator
FROM      dbo.ctl_material INNER JOIN
                dbo.ctl_mat_unit ON dbo.ctl_material.mat_id = dbo.ctl_mat_unit.mat_id
WHERE   (dbo.ctl_material.first_code = 2) AND (dbo.ctl_mat_unit.mat_unit_name = 'KL')

GO
