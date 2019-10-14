﻿<%@ Page Language="C#" %>
<%@ Register TagPrefix="aspxform" Namespace="XFormDesigner.Framework.Web.UI" Assembly="XFormDesigner.Framework" %>
<script runat="server">

    // Insert page code here
    //

</script>
<html xmlns:XForm="xmlns:xform">
<head runat="server">
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE8" />
    <title>Demo</title>
    <link rel="stylesheet" type="text/css" href="../../Style/FormGray.css" />
    <link rel="stylesheet" type="text/css" href="../../Scripts/XCommon.js" />
    <script>
        function getQueryString(name) {
            var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
            var r = window.location.search.substr(1).match(reg);
            if (r != null) return unescape(r[2]); return null;
        }
        Ext.onReady(function () {
            var purtaskid=getQueryString('proctaskid');
            Ext.get("xtxtPurTaskId").down('.yz-xform-field-ele').dom.value = purtaskid;
            XFormOnChange(document.getElementById("xtxtPurTaskId"));
        })
    </script>
</head>
<body>
    <form runat="server">
        <!-- Insert content here -->
        <table width="960" align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" border="0" cellspacing="0" cellpadding="0">
            <tbody>
                <tr>
                    <td width="158" height="34" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                    </td>
                    <td width="158" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                    </td>
                    <td width="316" align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <font size="4">到货通知</font></td>
                    <td width="158" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                    </td>
                    <td width="158" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                    </td>
                </tr>
            </tbody>
        </table>
        <table width="960" align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" border="0" cellspacing="0" cellpadding="0">
            <tbody>
                <tr>
                    <td width="160" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        供应商名称</td>
                    <td width="160" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox1" runat="server" XDataBind="SFDATA:proc_arrival_notice.vendor_name" width="80%" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XTextBox>
                        <aspxform:XDataBrowserButton id="XDataBrowserButton1" runat="server" Width="21px"></aspxform:XDataBrowserButton>
                    </td>
                    <td width="160" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        是否化验</td>
                    <td width="160" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XDropDownList id="XDropDownList1" runat="server" XDataBind="SFDATA:proc_arrival_notice.if_tests" PromptText="请选择">
                            <asp:ListItem Value="1">是</asp:ListItem>
                            <asp:ListItem Value="0">否</asp:ListItem>
                        </aspxform:XDropDownList>
                    </td>
                    <td width="160" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                    </td>
                    <td width="160" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                    </td>
                </tr>
                <tr>
                    <td class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        物料编码</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox2" runat="server" XDataBind="SFDATA:proc_arrival_notice.mat_code" width="100%" BorderWidth="1" BorderColor="#DCDCDC" DisableBehavior="ReadOnly"></aspxform:XTextBox>
                    </td>
                    <td class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        物料名称</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox10" runat="server" XDataBind="SFDATA:proc_arrival_notice.mat_name" width="100%" BorderWidth="1" BorderColor="#DCDCDC" DisableBehavior="ReadOnly"></aspxform:XTextBox>
                    </td>
                    <td class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        规格</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox11" runat="server" XDataBind="SFDATA:proc_arrival_notice.mat_spesc" width="100%" BorderWidth="1" BorderColor="#DCDCDC" DisableBehavior="ReadOnly"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        采购数量</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox3" runat="server" XDataBind="SFDATA:proc_arrival_notice.arrival_slnum" width="100%" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XTextBox>
                    </td>
                    <td class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        单位</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox9" runat="server" XDataBind="SFDATA:proc_arrival_notice.arrival_slnum_unit" width="100%" BorderWidth="1" BorderColor="#DCDCDC" DisableBehavior="ReadOnly"></aspxform:XTextBox>
                    </td>
                    <td class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        单价</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox12" runat="server" XDataBind="SFDATA:proc_arrival_notice.plan_price" width="100%" BorderWidth="1" BorderColor="#DCDCDC" DisableBehavior="ReadOnly"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        基准数量</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox4" runat="server" XDataBind="SFDATA:proc_arrival_notice.arrival_stnum" width="100%" BorderWidth="1" BorderColor="#DCDCDC" DisableBehavior="ReadOnly"></aspxform:XTextBox>
                    </td>
                    <td class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        基准单位</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox8" runat="server" XDataBind="SFDATA:proc_arrival_notice.arrival_stnum_unit" width="100%" BorderWidth="1" BorderColor="#DCDCDC" DisableBehavior="ReadOnly"></aspxform:XTextBox>
                    </td>
                    <td class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        转化比例</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox13" runat="server" XDataBind="SFDATA:proc_arrival_notice.sl_st_scale" width="100%" BorderWidth="1" BorderColor="#DCDCDC" DisableBehavior="ReadOnly"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        到货时间</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XDateTimePicker id="XDateTimePicker1" runat="server" XDataBind="SFDATA:proc_arrival_notice.plan_arrival_time" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XDateTimePicker>
                    </td>
                    <td class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        接货人</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox7" runat="server" XDataBind="SFDATA:proc_arrival_notice.storename" width="80%" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XTextBox>
                        <aspxform:XSelectUserButton id="XSelectUserButton1" runat="server" Width="21px"></aspxform:XSelectUserButton>
                    </td>
                    <td class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        预计运费</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox14" runat="server" XDataBind="SFDATA:proc_arrival_notice.plan_arrival_price" width="100%" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        运货人</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox5" runat="server" XDataBind="SFDATA:proc_arrival_notice.arrival_username" width="100%" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XTextBox>
                    </td>
                    <td class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        联系电话</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox6" runat="server" XDataBind="SFDATA:proc_arrival_notice.arrival_usertel" width="100%" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                    </td>
                </tr>
            </tbody>
        </table>
        <br />
        <table width="960" align="center" border="0" cellspacing="0" cellpadding="0" hiddenexpress="1">
            <tbody>
                <tr>
                    <td width="160">
                        入库完成情况</td>
                    <td width="160">
                        <aspxform:XTextBox id="XTextBox15" runat="server" XDataBind="SFDATA:proc_arrival_notice.notice_state" width="100%" BorderWidth="1" BorderColor="#DCDCDC">0</aspxform:XTextBox>
                    </td>
                    <td width="160">
                    </td>
                    <td width="160">
                    </td>
                    <td width="160">
                    </td>
                    <td width="160">
                    </td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td>
                        <aspxform:XTextBox id="xtxtPurTaskId" runat="server" XDataBind="SFDATA:proc_arrival_notice.pur_task_id" width="100%" BorderWidth="1" BorderColor="#DCDCDC" ValueToDisplayText="DataSource:SFDATA;TableName:proc_pur_task;FilterColumn:pur_task_id;DisplayColumn:pur_task_id" DataMap="mat_code->SFDATA:proc_arrival_notice.mat_code;mat_name->SFDATA:proc_arrival_notice.mat_name;plan_price->SFDATA:proc_arrival_notice.plan_price;pur_slnum_unit->SFDATA:proc_arrival_notice.arrival_slnum_unit;pur_stnum->SFDATA:proc_arrival_notice.arrival_stnum;pur_stnum_unit->SFDATA:proc_arrival_notice.arrival_stnum_unit;sl_st_scale->SFDATA:proc_arrival_notice.sl_st_scale"></aspxform:XTextBox>
                    </td>
                    <td>
                    </td>
                    <td>
                    </td>
                    <td>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td>
                    </td>
                    <td>
                    </td>
                    <td>
                    </td>
                    <td>
                    </td>
                    <td>
                    </td>
                </tr>
            </tbody>
        </table>
    </form>
</body>
</html>