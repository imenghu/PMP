<%@ Page Language="C#" %>
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
                        <font size="4">入库单</font></td>
                    <td width="158" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                    </td>
                    <td width="158" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                    </td>
                </tr>
            </tbody>
        </table>
        <table width="960" align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-LEFT: medium none" border="0" cellspacing="0" cellpadding="0">
            <tbody>
                <tr>
                    <td width="158" height="34" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        供应商名称</td>
                    <td width="158" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox2" runat="server" width="100%" BorderWidth="1" BorderColor="#DCDCDC" XDataBind="SFDATA:inv_in_detail.vendor_name"></aspxform:XTextBox>
                    </td>
                    <td width="158" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                    </td>
                    <td width="158" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                    </td>
                    <td width="158" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                    </td>
                    <td width="158" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                    </td>
                </tr>
                <tr>
                    <td height="33" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        物料编码</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox10" runat="server" width="100%" BorderWidth="1" BorderColor="#DCDCDC" XDataBind="SFDATA:inv_in_detail.mat_code"></aspxform:XTextBox>
                    </td>
                    <td class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        物料名称</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox11" runat="server" width="100%" BorderWidth="1" BorderColor="#DCDCDC" XDataBind="SFDATA:inv_in_detail.mat_name"></aspxform:XTextBox>
                    </td>
                    <td class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        规格</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox3" runat="server" width="100%" BorderWidth="1" BorderColor="#DCDCDC" XDataBind="SFDATA:inv_in_detail.mat_spesc"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td height="34" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        是否化验</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox16" runat="server" width="100%" BorderWidth="1" BorderColor="#DCDCDC" XDataBind="SFDATA:inv_in_detail.if_tests"></aspxform:XTextBox>
                    </td>
                    <td class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none" colspan="4">
                        <table width="100%" border="0" cellspacing="0" cellpadding="0" hiddenexpress="SFDATA:inv_in_detail.if_tests!='是'">
                            <tbody>
                                <tr>
                                    <td width="25%" class="xtbd">
                                        化验结果</td>
                                    <td width="25%">
                                        <aspxform:XTextBox id="XTextBox12" runat="server" width="100%" BorderWidth="1" BorderColor="#DCDCDC" XDataBind="SFDATA:inv_in_detail.testresult"></aspxform:XTextBox>
                                    </td>
                                    <td width="25%">
                                        化验单查询</td>
                                    <td width="25%">
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td height="34" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        到货数量</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox9" runat="server" width="100%" BorderWidth="1" BorderColor="#DCDCDC" XDataBind="SFDATA:inv_in_detail.plan_in_slnum"></aspxform:XTextBox>
                    </td>
                    <td class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        入库数量</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox13" runat="server" width="100%" BorderWidth="1" BorderColor="#DCDCDC" XDataBind="SFDATA:inv_in_detail.in_slnum"></aspxform:XTextBox>
                    </td>
                    <td class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        单位</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox4" runat="server" width="100%" BorderWidth="1" BorderColor="#DCDCDC" XDataBind="SFDATA:inv_in_detail.in_slnum_unit"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td height="34" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        转换比例</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox8" runat="server" width="100%" BorderWidth="1" BorderColor="#DCDCDC" XDataBind="SFDATA:inv_in_detail.sl_st_scale"></aspxform:XTextBox>
                    </td>
                    <td class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        基准数量</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox14" runat="server" width="100%" BorderWidth="1" BorderColor="#DCDCDC" XDataBind="SFDATA:inv_in_detail.in_stnum"></aspxform:XTextBox>
                    </td>
                    <td class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        基准单位</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox5" runat="server" width="100%" BorderWidth="1" BorderColor="#DCDCDC" XDataBind="SFDATA:inv_in_detail.in_stnum_unit"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td height="34" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        运货人</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox7" runat="server" width="100%" BorderWidth="1" BorderColor="#DCDCDC" XDataBind="SFDATA:inv_in_detail.yunhuoren"></aspxform:XTextBox>
                    </td>
                    <td class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        联系电话</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox15" runat="server" width="100%" BorderWidth="1" BorderColor="#DCDCDC" XDataBind="SFDATA:inv_in_detail.phone"></aspxform:XTextBox>
                    </td>
                    <td class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        入库时间</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XDateTimePicker id="XDateTimePicker1" runat="server" BorderWidth="1" BorderColor="#DCDCDC" XDataBind="SFDATA:inv_in_detail.create_time"></aspxform:XDateTimePicker>
                    </td>
                </tr>
                <tr>
                    <td height="34" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        仓库</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XDropDownList id="XDropDownList1" runat="server" XDataBind="SFDATA:inv_in_detail.depot_name" PromptText="请选择">
                            <asp:ListItem>测试</asp:ListItem>
                        </aspxform:XDropDownList>
                    </td>
                    <td class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        库管员</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox6" runat="server" width="100%" BorderWidth="1" BorderColor="#DCDCDC" XDataBind="SFDATA:inv_in_detail.submit_userid"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                    </td>
                </tr>
                <tr>
                    <td height="84" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        备注</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none" colspan="5">
                        <aspxform:XTextBox id="XTextBox1" runat="server" width="100%" BorderWidth="1" BorderColor="#DCDCDC" XDataBind="SFDATA:inv_in_detail.in_remarks" Rows="5" TextMode="MultiLine"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td height="34" style="BORDER-TOP: medium none">
                    </td>
                    <td style="BORDER-TOP: medium none">
                    </td>
                    <td style="BORDER-TOP: medium none">
                    </td>
                    <td style="BORDER-TOP: medium none">
                    </td>
                    <td style="BORDER-TOP: medium none">
                    </td>
                    <td style="BORDER-TOP: medium none">
                    </td>
                </tr>
            </tbody>
        </table>
        <table width="960" align="center" border="0" cellspacing="0" cellpadding="0" hiddenexpress="1">
            <tbody>
                <tr>
                    <td width="160">
                        <aspxform:XTextBox id="xtxtPurTaskId" runat="server" width="100%" BorderWidth="1" BorderColor="#DCDCDC" XDataBind="SFDATA:inv_in_detail.arrival_notice_id" ValueToDisplayText="DataSource:SFDATA;TableName:proc_arrival_notice;FilterColumn:arrival_notice_id;DisplayColumn:arrival_notice_id" DataMap="vendor_name->SFDATA:inv_in_detail.vendor_name;mat_code->SFDATA:inv_in_detail.mat_code;mat_name->SFDATA:inv_in_detail.mat_name;mat_spesc->SFDATA:inv_in_detail.mat_spesc;arrival_slnum->SFDATA:inv_in_detail.plan_in_slnum;arrival_slnum_unit->SFDATA:inv_in_detail.in_slnum_unit;arrival_stnum->SFDATA:inv_in_detail.in_stnum;arrival_stnum_unit->SFDATA:inv_in_detail.in_stnum_unit;sl_st_scale->SFDATA:inv_in_detail.sl_st_scale;arrival_username->SFDATA:inv_in_detail.yunhuoren;arrival_usertel->SFDATA:inv_in_detail.phone;if_tests->SFDATA:inv_in_detail.if_tests"></aspxform:XTextBox>
                    </td>
                    <td width="160">
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
