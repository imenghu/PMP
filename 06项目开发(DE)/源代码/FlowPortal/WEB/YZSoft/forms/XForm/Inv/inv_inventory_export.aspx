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
                        <strong><font size="5">物料盘存导出</font></strong> 
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
                        盘点人部门 
                    </td>
                    <td style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlinv_inventory_masterDeptName" runat="server" FieldName="盘点人部门" XDataBind="SFDATA:inv_inventory_master.DeptName" width="100%"></aspxform:XTextBox>
                    </td>
                    <td width="100" height="25" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        盘点人 
                    </td>
                    <td style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlinv_inventory_masterCreateUserName" runat="server" FieldName="盘点人" XDataBind="SFDATA:inv_inventory_master.CreateUserName" width="100%"></aspxform:XTextBox>
                    </td>
                    <td width="100" height="25" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        盘点仓库 
                    </td>
                    <td style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlinv_inventory_masterdepot_name" runat="server" FieldName="盘点仓库" XDataBind="SFDATA:inv_inventory_master.depot_name" width="100%"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                </tr>
                <tr>
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
                        物料编码</td>
                    <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: gray 1px solid; BORDER-BOTTOM: gray 1px solid; BORDER-LEFT: gray 1px solid">
                        物料名称</td>
                    <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: gray 1px solid; BORDER-BOTTOM: gray 1px solid; BORDER-LEFT: gray 1px solid">
                        规格</td>
                    <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: gray 1px solid; BORDER-BOTTOM: gray 1px solid; BORDER-LEFT: gray 1px solid">
                        基准单位</td>
                    <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: gray 1px solid; BORDER-BOTTOM: gray 1px solid; BORDER-LEFT: gray 1px solid">
                        盘点前库存数</td>
                    <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: gray 1px solid; BORDER-BOTTOM: gray 1px solid; BORDER-LEFT: gray 1px solid">
                        盘点后库存数</td>
                    <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: gray 1px solid; BORDER-BOTTOM: gray 1px solid; BORDER-LEFT: gray 1px solid">
                        盘点差值</td>
                    <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: gray 1px solid; BORDER-BOTTOM: gray 1px solid; BORDER-LEFT: gray 1px solid">
                        备注</td>
                </tr>
                <tr>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: gray 1px solid; BORDER-BOTTOM: gray 1px solid; BORDER-LEFT: gray 1px solid">
                        <aspxform:xgridlineno id="XGridLineNo1" runat="server" width="100%" textalign="Center" backcolor="White" borderstyle="None" borderwidth="1">1</aspxform:xgridlineno>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: gray 1px solid; BORDER-BOTTOM: gray 1px solid; BORDER-LEFT: gray 1px solid">
                        <aspxform:XTextBox id="ctrlinv_inventory_detaildepot_name" runat="server" FieldName="库房名称" XDataBind="SFDATA:inv_inventory_detail.depot_name" width="100%"></aspxform:XTextBox>
                        <aspxform:XTextBox id="ctrl_inv_inventory_detaildepot_id" runat="server" XDataBind="$formSet.ServerName:inv_inventory_detail.depot_id" width="100%" HiddenExpress="1"></aspxform:XTextBox>
                        <aspxform:XTextBox id="ctrl_inv_inventory_detailvendor_id" runat="server" XDataBind="$formSet.ServerName:inv_inventory_detail.vendor_id" width="100%" HiddenExpress="1"></aspxform:XTextBox>
                        <aspxform:XTextBox id="ctrl_inv_inventory_detailvendor_code" runat="server" XDataBind="$formSet.ServerName:inv_inventory_detail.vendor_code" width="100%" HiddenExpress="1"></aspxform:XTextBox>
                        <aspxform:XTextBox id="ctrl_inv_inventory_detailmat_id" runat="server" XDataBind="$formSet.ServerName:inv_inventory_detail.mat_id" width="100%" HiddenExpress="1"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: gray 1px solid; BORDER-BOTTOM: gray 1px solid; BORDER-LEFT: gray 1px solid">
                        <aspxform:XTextBox id="ctrlinv_inventory_detailvendor_name" runat="server" FieldName="供应商名称" XDataBind="SFDATA:inv_inventory_detail.vendor_name" width="100%"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: gray 1px solid; BORDER-BOTTOM: gray 1px solid; BORDER-LEFT: gray 1px solid">
                        <aspxform:XTextBox id="ctrlinv_inventory_detailmat_code" runat="server" FieldName="物料编码" XDataBind="SFDATA:inv_inventory_detail.mat_code" width="100%"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: gray 1px solid; BORDER-BOTTOM: gray 1px solid; BORDER-LEFT: gray 1px solid">
                        <aspxform:XTextBox id="ctrlinv_inventory_detailmat_name" runat="server" FieldName="物料名称" XDataBind="SFDATA:inv_inventory_detail.mat_name" width="100%"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: gray 1px solid; BORDER-BOTTOM: gray 1px solid; BORDER-LEFT: gray 1px solid">
                        <aspxform:XTextBox id="ctrlinv_inventory_detailmat_spec" runat="server" FieldName="规格" XDataBind="SFDATA:inv_inventory_detail.mat_spec" width="100%"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: gray 1px solid; BORDER-BOTTOM: gray 1px solid; BORDER-LEFT: gray 1px solid">
                        <aspxform:XTextBox id="ctrlinv_inventory_detailinv_stnum_unit" runat="server" FieldName="基准单位" XDataBind="SFDATA:inv_inventory_detail.inv_stnum_unit" width="100%"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: gray 1px solid; BORDER-BOTTOM: gray 1px solid; BORDER-LEFT: gray 1px solid">
                        <aspxform:XTextBox id="ctrlinv_inventory_detaildepot_mat_num" runat="server" FieldName="盘点前库存数" XDataBind="SFDATA:inv_inventory_detail.depot_mat_num" width="100%"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: gray 1px solid; BORDER-BOTTOM: gray 1px solid; BORDER-LEFT: gray 1px solid">
                        <aspxform:XTextBox id="ctrlinv_inventory_detailinv_depot_mat_num" runat="server" FieldName="盘点后库存数" XDataBind="SFDATA:inv_inventory_detail.inv_depot_mat_num" width="100%"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: gray 1px solid; BORDER-BOTTOM: gray 1px solid; BORDER-LEFT: gray 1px solid">
                        <aspxform:XTextBox id="ctrlinv_inventory_detailinv_diff_num" runat="server" FieldName="盘点差值" XDataBind="SFDATA:inv_inventory_detail.inv_diff_num" width="100%"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: gray 1px solid; BORDER-BOTTOM: gray 1px solid; BORDER-LEFT: gray 1px solid">
                        <aspxform:XTextBox id="ctrlinv_inventory_detailinv_remarks" runat="server" FieldName="备注" XDataBind="SFDATA:inv_inventory_detail.inv_remarks" width="100%"></aspxform:XTextBox>
                    </td>
                </tr>
            </tbody>
        </table>
        <br />
        <table width="800" align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" border="0" cellspacing="0" cellpadding="0" hiddenexpress="1">
            <tbody>
                <tr>
                    <td width="100" height="25" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        部门编码 
                    </td>
                    <td style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlinv_inventory_masterDept" runat="server" FieldName="部门编码" XDataBind="SFDATA:inv_inventory_master.Dept" width="100%"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td width="100" height="25" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        创建人账号 
                    </td>
                    <td style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlinv_inventory_masterCreateUser" runat="server" FieldName="创建人账号" XDataBind="SFDATA:inv_inventory_master.CreateUser" width="100%"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td width="100" height="25" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                        库房id 
                    </td>
                    <td style="BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="ctrlinv_inventory_masterdepot_id" runat="server" FieldName="库房id" XDataBind="SFDATA:inv_inventory_master.depot_id" width="100%"></aspxform:XTextBox>
                    </td>
                </tr>
            </tbody>
        </table>
    </form>
</body>
</html>
