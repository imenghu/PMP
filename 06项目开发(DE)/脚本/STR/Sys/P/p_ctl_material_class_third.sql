
/*===================================== StordProc p_ctl_material_class_third ===================================*/
print 'p_ctl_material_class_third' 
if exists (select * from sysobjects where id = object_id(N'[dbo].[p_ctl_material_class_third]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
     drop procedure [dbo].[p_ctl_material_class_third]
GO

CREATE PROCEDURE p_ctl_material_class_third
(
	@first_code varchar(12),
	@second_code varchar(12)
)
AS
BEGIN
	select distinct third_code,third_name from ctl_material_class where first_code=@first_code and second_code=@second_code
END

GO
