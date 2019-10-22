delete from inv_matrefund_detail where not exists(select 1 from inv_matrefund where mat_refund_id=inv_matrefund_detail.mat_refund_id)
/*==================inv_matrefund_detail foreignkey ====================*/
PRINT 'inv_matrefund_detail:FK_inv_matrefund_detail_inv_matrefund'
if exists (select * from sysobjects where id = object_id('dbo.FK_inv_matrefund_detail_inv_matrefund') and sysstat & 0xff = 11)
  ALTER table inv_matrefund_detail DROP CONSTRAINT FK_inv_matrefund_detail_inv_matrefund
GO
  ALTER table inv_matrefund_detail ADD CONSTRAINT FK_inv_matrefund_detail_inv_matrefund FOREIGN KEY ( mat_refund_id ) REFERENCES dbo.inv_matrefund ( mat_refund_id )
GO
