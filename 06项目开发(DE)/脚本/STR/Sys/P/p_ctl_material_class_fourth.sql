
/*===================================== StordProc p_ctl_material_class_fourth ===================================*/
print 'p_ctl_material_class_fourth' 
if exists (select * from sysobjects where id = object_id(N'[dbo].[p_ctl_material_class_fourth]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
     drop procedure [dbo].[p_ctl_material_class_fourth]
GO

CREATE PROCEDURE p_ctl_material_class_fourth
(
	@first_code varchar(12),
	@second_code varchar(12),
	@third_code varchar(12)
)
AS
BEGIN
	select distinct fourth_code,fourth_name from ctl_material_class where first_code=@first_code and second_code=@second_code and third_code=@third_code
END

GO
