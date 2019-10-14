
/*===================================== StordProc p_ctl_material_getcode ===================================*/
print 'p_ctl_material_getcode' 
if exists (select * from sysobjects where id = object_id(N'[dbo].[p_ctl_material_getcode]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
     drop procedure [dbo].[p_ctl_material_getcode]
GO

CREATE PROCEDURE [dbo].[p_ctl_material_getcode]
(
	@first_code varchar(12),
	@second_code varchar(12),
	@third_code varchar(12),
	@fourth_code varchar(12)
)
AS
BEGIN
	declare @max_code varchar(12)
	select @max_code=max(mat_code) from ctl_material where first_code=@first_code and second_code=@second_code and third_code=@third_code and fourth_code=@fourth_code
	if (@max_code is not null)
	begin
		declare @pre_code varchar(12)
		declare @num_code varchar(12)
		set @pre_code=SUBSTRING(@max_code,1,8)
		set @num_code=SUBSTRING(@max_code,9,LEN(@pre_code))
		select @pre_code+RIGHT('0000'+Convert(varchar,(CONVERT(int,@num_code)+1)),4)
	end
END

GO
