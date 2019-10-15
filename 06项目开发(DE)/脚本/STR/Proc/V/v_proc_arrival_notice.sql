/*=========================== View v_proc_arrival_notice =============================*/
print 'v_proc_arrival_notice' 
if exists (select * from sysobjects where id = object_id(N'[dbo].[v_proc_arrival_notice]') and sysstat & 0xf = 2)
     drop view [dbo].[v_proc_arrival_notice]
GO

CREATE VIEW [dbo].[v_proc_arrival_notice]
AS
SELECT   dbo.proc_arrival_notice.*, dbo.inv_in_detail.in_detail_id
FROM      dbo.proc_arrival_notice left JOIN
                dbo.inv_in_detail ON dbo.proc_arrival_notice.arrival_notice_id = dbo.inv_in_detail.arrival_notice_id

GO
