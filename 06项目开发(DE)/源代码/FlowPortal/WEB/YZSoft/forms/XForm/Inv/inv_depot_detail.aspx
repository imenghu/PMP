<%@ Page Language="C#" %>
<%@ Register TagPrefix="aspxform" Namespace="XFormDesigner.Framework.Web.UI" Assembly="XFormDesigner.Framework" %>
<script runat="server">

    // Insert page code here
    //

</script>
<html xmlns:xform="xmlns:xform">
<head runat="server">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge" />
    <title>BPM Form</title>
    <link href="../../style/FormGray.css" rel="stylesheet" />
</head>
<body>
    <form runat="server">
        <!--
$Scripts-->
        <table width="960" align="center" border="0" cellspacing="0" cellpadding="0">
            <tbody>
                <tr>
                    <td width="200">
                    </td>
                    <td width="400" align="center" class="header-td-title">
                        <strong><font size="5">库存明细单</font></strong> 
                    </td>
                    <td width="200" class="header-td-sn">
                    </td>
                </tr>
            </tbody>
        </table>
        <table width="960" align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" border="0" cellspacing="0" cellpadding="0">
            <tbody>
                <tr>
                    <td width="100" height="25" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        物料名称 
                    </td>
                    <td style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlinv_depot_detailmat_name" runat="server" XDataBind="SFDATA:inv_depot_detail.mat_name" width="100%"></aspxform:XTextBox>
                    </td>
                    <td width="100" height="25" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        物料编码 
                    </td>
                    <td style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlinv_depot_detailmat_code" runat="server" XDataBind="SFDATA:inv_depot_detail.mat_code" width="100%"></aspxform:XTextBox>
                    </td>
                    <td width="100" height="25" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        规格 
                    </td>
                    <td style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlinv_depot_detailmat_spec" runat="server" XDataBind="SFDATA:inv_depot_detail.mat_spec" width="100%"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                </tr>
            </tbody>
        </table>
        <table width="960" align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" border="0" cellspacing="0" cellpadding="0" dynamicarea=" 1,1 ">
            <tbody>
                <tr>
                    <td width="50" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: gray 1px solid; BORDER-BOTTOM: gray 1px solid; BORDER-LEFT: gray 1px solid">
                        序号</td>
                    <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: gray 1px solid; BORDER-BOTTOM: gray 1px solid; BORDER-LEFT: gray 1px solid">
                        库房名称</td>
                    <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: gray 1px solid; BORDER-BOTTOM: gray 1px solid; BORDER-LEFT: gray 1px solid">
                        供应商名称</td>
                    <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: gray 1px solid; BORDER-BOTTOM: gray 1px solid; BORDER-LEFT: gray 1px solid">
                        入库</td>
                    <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: gray 1px solid; BORDER-BOTTOM: gray 1px solid; BORDER-LEFT: gray 1px solid">
                        出库</td>
                    <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: gray 1px solid; BORDER-BOTTOM: gray 1px solid; BORDER-LEFT: gray 1px solid">
                        退库</td>
                    <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: gray 1px solid; BORDER-BOTTOM: gray 1px solid; BORDER-LEFT: gray 1px solid">
                        盘存差值</td>
                    <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: gray 1px solid; BORDER-BOTTOM: gray 1px solid; BORDER-LEFT: gray 1px solid">
                        单位</td>
                </tr>
                <tr>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: gray 1px solid; BORDER-BOTTOM: gray 1px solid; BORDER-LEFT: gray 1px solid">
                        <aspxform:xgridlineno id="XGridLineNo1" runat="server" width="100%" textalign="Center" backcolor="White" borderstyle="None" borderwidth="1">1</aspxform:xgridlineno>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: gray 1px solid; BORDER-BOTTOM: gray 1px solid; BORDER-LEFT: gray 1px solid">
                        <aspxform:XTextBox id="ctrlinv_depot_detaildepot_name" runat="server" XDataBind="SFDATA:inv_depot_detail.depot_name" width="100%"></aspxform:XTextBox>
                        <aspxform:XTextBox id="ctrl_inv_depot_detaildepot_id" runat="server" XDataBind="$formSet.ServerName:inv_depot_detail.depot_id" width="100%" HiddenExpress="1"></aspxform:XTextBox>
                        <aspxform:XTextBox id="ctrl_inv_depot_detailvendor_id" runat="server" XDataBind="$formSet.ServerName:inv_depot_detail.vendor_id" width="100%" HiddenExpress="1"></aspxform:XTextBox>
                        <aspxform:XTextBox id="ctrl_inv_depot_detailcreate_time" runat="server" XDataBind="$formSet.ServerName:inv_depot_detail.create_time" width="100%" HiddenExpress="1"></aspxform:XTextBox>
                        <aspxform:XTextBox id="ctrl_inv_depot_detailupdate_time" runat="server" XDataBind="$formSet.ServerName:inv_depot_detail.update_time" width="100%" HiddenExpress="1"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: gray 1px solid; BORDER-BOTTOM: gray 1px solid; BORDER-LEFT: gray 1px solid">
                        <aspxform:XTextBox id="ctrlinv_depot_detailvendor_name" runat="server" XDataBind="SFDATA:inv_depot_detail.vendor_name" width="100%"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: gray 1px solid; BORDER-BOTTOM: gray 1px solid; BORDER-LEFT: gray 1px solid">
                        <aspxform:XTextBox id="ctrlinv_depot_detailproc_in_num" runat="server" XDataBind="SFDATA:inv_depot_detail.proc_in_num" width="100%"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: gray 1px solid; BORDER-BOTTOM: gray 1px solid; BORDER-LEFT: gray 1px solid">
                        <aspxform:XTextBox id="ctrlinv_depot_detailinv_out_num" runat="server" XDataBind="SFDATA:inv_depot_detail.inv_out_num" width="100%"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: gray 1px solid; BORDER-BOTTOM: gray 1px solid; BORDER-LEFT: gray 1px solid">
                        <aspxform:XTextBox id="ctrlinv_depot_detailrefund_num" runat="server" XDataBind="SFDATA:inv_depot_detail.refund_num" width="100%"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: gray 1px solid; BORDER-BOTTOM: gray 1px solid; BORDER-LEFT: gray 1px solid">
                        <aspxform:XTextBox id="ctrlinv_depot_detailinv_diff_num" runat="server" XDataBind="SFDATA:inv_depot_detail.inv_diff_num" width="100%"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: gray 1px solid; BORDER-BOTTOM: gray 1px solid; BORDER-LEFT: gray 1px solid">
                        <aspxform:XTextBox id="ctrlinv_depot_detaildepot_stnum_unit" runat="server" XDataBind="SFDATA:inv_depot_detail.depot_stnum_unit" width="100%"></aspxform:XTextBox>
                    </td>
                </tr>
            </tbody>
        </table>
        <br />
        <table width="800" align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" border="0" cellspacing="0" cellpadding="0" hiddenexpress="1">
            <tbody>
                <tr>
                    <td width="100" height="25" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        物料id 
                    </td>
                    <td style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlinv_depot_detailmat_id" runat="server" XDataBind="SFDATA:inv_depot_detail.mat_id" width="100%"></aspxform:XTextBox>
                    </td>
                </tr>
            </tbody>
        </table>
    </form>
</body>
</html>
