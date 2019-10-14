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
                        <aspxform:XTextBox id="XTextBox2" runat="server" XDataBind="SFDATA:inv_in_detail.vendor_name" BorderColor="#DCDCDC" BorderWidth="1" width="100%"></aspxform:XTextBox>
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
                        <aspxform:XTextBox id="XTextBox10" runat="server" XDataBind="SFDATA:inv_in_detail.mat_code" BorderColor="#DCDCDC" BorderWidth="1" width="100%"></aspxform:XTextBox>
                    </td>
                    <td class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        物料名称</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox11" runat="server" XDataBind="SFDATA:inv_in_detail.mat_name" BorderColor="#DCDCDC" BorderWidth="1" width="100%"></aspxform:XTextBox>
                    </td>
                    <td class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        规格</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox3" runat="server" XDataBind="SFDATA:inv_in_detail.mat_spesc" BorderColor="#DCDCDC" BorderWidth="1" width="100%"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td height="34" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        是否化验</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox16" runat="server" XDataBind="SFDATA:inv_in_detail.if_tests" BorderColor="#DCDCDC" BorderWidth="1" width="100%"></aspxform:XTextBox>
                    </td>
                    <td class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none" colspan="4">
                        <table width="100%" border="0" cellspacing="0" cellpadding="0" hiddenexpress="SFDATA:inv_in_detail.if_tests!='是'">
                            <tbody>
                                <tr>
                                    <td width="25%" class="xtbd">
                                        化验结果</td>
                                    <td width="25%">
                                        <aspxform:XTextBox id="XTextBox12" runat="server" XDataBind="SFDATA:inv_in_detail.testresult" BorderColor="#DCDCDC" BorderWidth="1" width="100%"></aspxform:XTextBox>
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
                        <aspxform:XTextBox id="XTextBox9" runat="server" XDataBind="SFDATA:inv_in_detail.plan_in_slnum" BorderColor="#DCDCDC" BorderWidth="1" width="100%"></aspxform:XTextBox>
                    </td>
                    <td class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        入库数量</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox13" runat="server" XDataBind="SFDATA:inv_in_detail.in_slnum" BorderColor="#DCDCDC" BorderWidth="1" width="100%"></aspxform:XTextBox>
                    </td>
                    <td class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        单位</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox4" runat="server" XDataBind="SFDATA:inv_in_detail.in_slnum_unit" BorderColor="#DCDCDC" BorderWidth="1" width="100%"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td height="34" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        转换比例</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox8" runat="server" XDataBind="SFDATA:inv_in_detail.sl_st_scale" BorderColor="#DCDCDC" BorderWidth="1" width="100%"></aspxform:XTextBox>
                    </td>
                    <td class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        基准数量</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox14" runat="server" XDataBind="SFDATA:inv_in_detail.in_stnum" BorderColor="#DCDCDC" BorderWidth="1" width="100%"></aspxform:XTextBox>
                    </td>
                    <td class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        基准单位</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox5" runat="server" XDataBind="SFDATA:inv_in_detail.in_stnum_unit" BorderColor="#DCDCDC" BorderWidth="1" width="100%"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td height="34" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        运货人</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox7" runat="server" XDataBind="SFDATA:inv_in_detail.yunhuoren" BorderColor="#DCDCDC" BorderWidth="1" width="100%"></aspxform:XTextBox>
                    </td>
                    <td class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        联系电话</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox15" runat="server" XDataBind="SFDATA:inv_in_detail.phone" BorderColor="#DCDCDC" BorderWidth="1" width="100%"></aspxform:XTextBox>
                    </td>
                    <td class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        入库时间</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XDateTimePicker id="XDateTimePicker1" runat="server" XDataBind="SFDATA:inv_in_detail.create_time" BorderColor="#DCDCDC" BorderWidth="1" Enabled="False"></aspxform:XDateTimePicker>
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
                        <aspxform:XTextBox id="XTextBox6" runat="server" XDataBind="SFDATA:inv_in_detail.submit_userid" BorderColor="#DCDCDC" BorderWidth="1" width="100%"></aspxform:XTextBox>
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
                        <aspxform:XTextBox id="XTextBox1" runat="server" XDataBind="SFDATA:inv_in_detail.in_remarks" BorderColor="#DCDCDC" BorderWidth="1" width="100%" TextMode="MultiLine" Rows="5"></aspxform:XTextBox>
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
    </form>
</body>
</html>
