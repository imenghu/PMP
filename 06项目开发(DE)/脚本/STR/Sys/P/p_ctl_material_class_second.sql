
/*===================================== StordProc p_ctl_material_class_second ===================================*/
print 'p_ctl_material_class_second' 
if exists (select * from sysobjects where id = object_id(N'[dbo].[p_ctl_material_class_second]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
     drop procedure [dbo].[p_ctl_material_class_second]
GO

CREATE PROCEDURE p_ctl_material_class_second
(
	@first_code varchar(12)
)
AS
BEGIN
	select distinct second_code,second_name from ctl_material_class where first_code=@first_code
END

GO
