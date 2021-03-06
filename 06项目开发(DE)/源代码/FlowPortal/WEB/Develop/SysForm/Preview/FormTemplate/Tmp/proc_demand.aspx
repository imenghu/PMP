<%@ Page Language="C#" %>
<%@ Register TagPrefix="aspxform" Namespace="XFormDesigner.Framework.Web.UI" Assembly="XFormDesigner.Framework" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="../../../../../YZSoft/Forms/Style/FormGray.css" rel="stylesheet" />
</head>
<body>
<!--
$Scripts-->
<form runat="server">
    <table width="960" align="center" border="0" cellspacing="0" cellpadding="0">
        <tbody>
            <tr>
                <td width="200">
                </td>
                <td width="400" align="center" class="header-td-title">
                    <strong><font size="5">采购需求</font></strong>
                </td>
                <td width="200" class="header-td-sn"></td>
            </tr>
        </tbody>
    </table>
                <table width="960" align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" border="0" cellspacing="0" cellpadding="0">
        <tbody>
                                                                        <tr>
                                                <td width="100" height="25" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                    需求名称
                </td>
                <td width="0" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                    <aspxform:XTextBox id='ctrlproc_demanddemand_name' width='100%' XDataBind='SFDATA:proc_demand.demand_name' runat='server'></aspxform:XTextBox>
                </td>
                                                                                                                                                            <td width="100" height="25" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                    备注
                </td>
                <td width="0" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                    <aspxform:XTextBox id='ctrlproc_demanddemand_remarks' width='100%' XDataBind='SFDATA:proc_demand.demand_remarks' runat='server'></aspxform:XTextBox>
                </td>
                                                                                                                                                            <td width="100" height="25" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                    审批状态
                </td>
                <td width="0" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                    <aspxform:XTextBox id='ctrlproc_demanddemand_state' width='100%' XDataBind='SFDATA:proc_demand.demand_state' runat='server'></aspxform:XTextBox>
                </td>
                                                                                                                                        <tr>
                                                                                                                                                                                                                                                                                                                                                                        </tbody>
    </table>
                        <table width="960" align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" border="0" cellspacing="0" cellpadding="0" dynamicarea=" 2,1 ">
        <tbody>
                        <tr>
                <td height="25" class="xttl" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid" colspan="16">
                    物料明细
                </td>
            </tr>
                        <tr>
                <td class="xtbd" width="50" style="BORDER-TOP: medium none; BORDER-RIGHT: gray 1px solid; BORDER-BOTTOM: gray 1px solid; BORDER-LEFT: gray 1px solid; ">序号</td>
                                                                                                                                                                                <td class="xtbd" width="100" style="BORDER-TOP: medium none; BORDER-RIGHT: gray 1px solid; BORDER-BOTTOM: gray 1px solid; BORDER-LEFT: gray 1px solid; ">备注</td>
                                                                <td class="xtbd" width="100" style="BORDER-TOP: medium none; BORDER-RIGHT: gray 1px solid; BORDER-BOTTOM: gray 1px solid; BORDER-LEFT: gray 1px solid; ">提报人ID</td>
                                                                <td class="xtbd" width="100" style="BORDER-TOP: medium none; BORDER-RIGHT: gray 1px solid; BORDER-BOTTOM: gray 1px solid; BORDER-LEFT: gray 1px solid; ">采购物料数量</td>
                                                                <td class="xtbd" width="100" style="BORDER-TOP: medium none; BORDER-RIGHT: gray 1px solid; BORDER-BOTTOM: gray 1px solid; BORDER-LEFT: gray 1px solid; ">单位</td>
                                                                <td class="xtbd" width="100" style="BORDER-TOP: medium none; BORDER-RIGHT: gray 1px solid; BORDER-BOTTOM: gray 1px solid; BORDER-LEFT: gray 1px solid; ">基准单位数量</td>
                                                                <td class="xtbd" width="100" style="BORDER-TOP: medium none; BORDER-RIGHT: gray 1px solid; BORDER-BOTTOM: gray 1px solid; BORDER-LEFT: gray 1px solid; ">基准单位</td>
                                                                <td class="xtbd" width="100" style="BORDER-TOP: medium none; BORDER-RIGHT: gray 1px solid; BORDER-BOTTOM: gray 1px solid; BORDER-LEFT: gray 1px solid; ">物料类别</td>
                                                                <td class="xtbd" width="100" style="BORDER-TOP: medium none; BORDER-RIGHT: gray 1px solid; BORDER-BOTTOM: gray 1px solid; BORDER-LEFT: gray 1px solid; ">计划生产产品数</td>
                                                                <td class="xtbd" width="100" style="BORDER-TOP: medium none; BORDER-RIGHT: gray 1px solid; BORDER-BOTTOM: gray 1px solid; BORDER-LEFT: gray 1px solid; ">单位</td>
                                                                <td class="xtbd" width="100" style="BORDER-TOP: medium none; BORDER-RIGHT: gray 1px solid; BORDER-BOTTOM: gray 1px solid; BORDER-LEFT: gray 1px solid; ">销售订单</td>
                                                                <td class="xtbd" width="100" style="BORDER-TOP: medium none; BORDER-RIGHT: gray 1px solid; BORDER-BOTTOM: gray 1px solid; BORDER-LEFT: gray 1px solid; ">用途</td>
                                            </tr>
            <tr>
                <td style="BORDER-TOP: medium none; BORDER-RIGHT: gray 1px solid; BORDER-BOTTOM: gray 1px solid; BORDER-LEFT: gray 1px solid; ">
                    <aspxform:xgridlineno runat="server" width="100%" borderwidth="1" borderstyle="None" backcolor="White" textalign="Center">1</aspxform:xgridlineno>
                </td>
                                                                                                                                                                                                <td style="BORDER-TOP: medium none; BORDER-RIGHT: gray 1px solid; BORDER-BOTTOM: gray 1px solid; BORDER-LEFT: gray 1px solid; ">
                    <aspxform:XTextBox id='ctrlproc_demand_detaildemand_detail_remarks' width='100%' XDataBind='SFDATA:proc_demand_detail.demand_detail_remarks' runat='server'></aspxform:XTextBox>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        </td>
                                                                                <td style="BORDER-TOP: medium none; BORDER-RIGHT: gray 1px solid; BORDER-BOTTOM: gray 1px solid; BORDER-LEFT: gray 1px solid; ">
                    <aspxform:XTextBox id='ctrlproc_demand_detaildemand_detail_userid' width='100%' XDataBind='SFDATA:proc_demand_detail.demand_detail_userid' runat='server'></aspxform:XTextBox>
                                                        </td>
                                                                                <td style="BORDER-TOP: medium none; BORDER-RIGHT: gray 1px solid; BORDER-BOTTOM: gray 1px solid; BORDER-LEFT: gray 1px solid; ">
                    <aspxform:XTextBox id='ctrlproc_demand_detaildemand_slnum' width='100%' XDataBind='SFDATA:proc_demand_detail.demand_slnum' runat='server'></aspxform:XTextBox>
                                                        </td>
                                                                                <td style="BORDER-TOP: medium none; BORDER-RIGHT: gray 1px solid; BORDER-BOTTOM: gray 1px solid; BORDER-LEFT: gray 1px solid; ">
                    <aspxform:XTextBox id='ctrlproc_demand_detaildemand_slnum_unit' width='100%' XDataBind='SFDATA:proc_demand_detail.demand_slnum_unit' runat='server'></aspxform:XTextBox>
                                                        </td>
                                                                                <td style="BORDER-TOP: medium none; BORDER-RIGHT: gray 1px solid; BORDER-BOTTOM: gray 1px solid; BORDER-LEFT: gray 1px solid; ">
                    <aspxform:XTextBox id='ctrlproc_demand_detaildemand_stnum' width='100%' XDataBind='SFDATA:proc_demand_detail.demand_stnum' runat='server'></aspxform:XTextBox>
                                                        </td>
                                                                                <td style="BORDER-TOP: medium none; BORDER-RIGHT: gray 1px solid; BORDER-BOTTOM: gray 1px solid; BORDER-LEFT: gray 1px solid; ">
                    <aspxform:XTextBox id='ctrlproc_demand_detaildemand_stnum_unit' width='100%' XDataBind='SFDATA:proc_demand_detail.demand_stnum_unit' runat='server'></aspxform:XTextBox>
                                                        </td>
                                                                                <td style="BORDER-TOP: medium none; BORDER-RIGHT: gray 1px solid; BORDER-BOTTOM: gray 1px solid; BORDER-LEFT: gray 1px solid; ">
                    <aspxform:XTextBox id='ctrlproc_demand_detailmat_type' width='100%' XDataBind='SFDATA:proc_demand_detail.mat_type' runat='server'></aspxform:XTextBox>
                                                        </td>
                                                                                <td style="BORDER-TOP: medium none; BORDER-RIGHT: gray 1px solid; BORDER-BOTTOM: gray 1px solid; BORDER-LEFT: gray 1px solid; ">
                    <aspxform:XTextBox id='ctrlproc_demand_detailplan_pnum' width='100%' XDataBind='SFDATA:proc_demand_detail.plan_pnum' runat='server'></aspxform:XTextBox>
                                                        </td>
                                                                                <td style="BORDER-TOP: medium none; BORDER-RIGHT: gray 1px solid; BORDER-BOTTOM: gray 1px solid; BORDER-LEFT: gray 1px solid; ">
                    <aspxform:XTextBox id='ctrlproc_demand_detailplan_pnum_unit' width='100%' XDataBind='SFDATA:proc_demand_detail.plan_pnum_unit' runat='server'></aspxform:XTextBox>
                                                        </td>
                                                                                <td style="BORDER-TOP: medium none; BORDER-RIGHT: gray 1px solid; BORDER-BOTTOM: gray 1px solid; BORDER-LEFT: gray 1px solid; ">
                    <aspxform:XTextBox id='ctrlproc_demand_detailsale_order' width='100%' XDataBind='SFDATA:proc_demand_detail.sale_order' runat='server'></aspxform:XTextBox>
                                                        </td>
                                                                                <td style="BORDER-TOP: medium none; BORDER-RIGHT: gray 1px solid; BORDER-BOTTOM: gray 1px solid; BORDER-LEFT: gray 1px solid; ">
                    <aspxform:XTextBox id='ctrlproc_demand_detailuses' width='100%' XDataBind='SFDATA:proc_demand_detail.uses' runat='server'></aspxform:XTextBox>
                                                        </td>
                                                            </tr>
        </tbody>
    </table>
                </form>
</body>
</html>