delete from inv_matrefund_detail where not exists(select 1 from inv_matrefund where mat_refund_id=inv_matrefund_detail.mat_refund_id)

/*==================inv_out_detail foreignkey ====================*/
PRINT 'inv_out_detail:FK_inv_out_detail_inv_out_master'
if exists (select * from sysobjects where id = object_id('dbo.FK_inv_out_detail_inv_out_master') and sysstat & 0xff = 11)
  ALTER table inv_out_detail DROP CONSTRAINT FK_inv_out_detail_inv_out_master
GO
  ALTER table inv_out_detail ADD CONSTRAINT FK_inv_out_detail_inv_out_master FOREIGN KEY ( out_master_id ) REFERENCES dbo.inv_out_master ( out_master_id )
GO