
/*===================================== StordProc p_inv_depot_detail ===================================*/
print 'p_inv_depot_detail' 
if exists (select * from sysobjects where id = object_id(N'[dbo].[p_inv_depot_detail]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
     drop procedure [dbo].[p_inv_depot_detail]
GO

CREATE PROCEDURE [dbo].[p_inv_depot_detail]
(
	@depot_id int,
	@depot_name nvarchar(255),
	@vendor_id int,
	@vendor_name nvarchar(255),
	@mat_code nvarchar(255),
	@mat_name nvarchar(255),
	@mat_spec nvarchar(255),
	@depot_stnum_unit nvarchar(255),
	@proc_in_num nvarchar(60),
	@inv_out_num nvarchar(60),
	@refund_num nvarchar(60),
	@inv_diff_num nvarchar(60),
	@CreateUser varchar(50),
	@CreateUserName varchar(50),
	@Company varchar(50),
	@CompanyName varchar(50),
	@Dept varchar(50),
	@DeptName varchar(50)
)
AS
BEGIN
	declare @last_depot_mat_num nvarchar(60);
	declare @last_depot_detail_id int;
	declare @depot_mat_num nvarchar(60);
	set @last_depot_detail_id=0;
	set @last_depot_mat_num='0';
	select @last_depot_detail_id=depot_detail_id,@last_depot_mat_num=depot_mat_num from inv_depot_detail where depot_id=@depot_id and vendor_id=@vendor_id and mat_code=@mat_code and [state]='1';
	set @depot_mat_num=isnull(Convert(float,@last_depot_mat_num),0)+isnull(Convert(float,@proc_in_num),0)-isnull(Convert(float,@inv_out_num),0)+isnull(Convert(float,@refund_num),0)+isnull(Convert(float,@inv_diff_num),0);
	insert into inv_depot_detail (depot_id,depot_name,vendor_id,vendor_name,mat_code,mat_name,mat_spec,depot_stnum_unit,proc_in_num,inv_out_num,refund_num,inv_diff_num,last_depot_mat_num,depot_mat_num,[state],create_time,CreateUser,CreateUserName,Company,CompanyName,Dept,DeptName)values(@depot_id,@depot_name,@vendor_id,@vendor_name,@mat_code,@mat_name,@mat_spec,@depot_stnum_unit,@proc_in_num,@inv_out_num,@refund_num,@inv_diff_num,@last_depot_mat_num,@depot_mat_num,'1',getdate(),@CreateUser,@CreateUserName,@Company,@CompanyName,@Dept,@DeptName);
	update inv_depot_detail set [state]='0' where depot_detail_id=@last_depot_detail_id;
END

GO
