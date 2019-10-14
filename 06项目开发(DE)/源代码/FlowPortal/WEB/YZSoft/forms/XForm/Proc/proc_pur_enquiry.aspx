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
        <!--
$Scripts-->
        <table align="center">
            <tbody>
                <tr>
                    <td>
                        <table width="960" align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" border="0" cellspacing="0" cellpadding="0">
                            <tbody>
                                <tr>
                                    <td width="158" height="34" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                    </td>
                                    <td width="158" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                    </td>
                                    <td width="316" align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <font size="4">采购询价</font></td>
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
                                    <td width="158" height="34" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                        公司</td>
                                    <td width="158" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="XTextBox1" runat="server" BorderWidth="1" BorderColor="#DCDCDC" width="100%" XDataBind="SFDATA:proc_pur_task.companyname"></aspxform:XTextBox>
                                    </td>
                                    <td width="158" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                        部门</td>
                                    <td width="158" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="XTextBox2" runat="server" BorderWidth="1" BorderColor="#DCDCDC" width="100%" XDataBind="SFDATA:proc_pur_task.dept"></aspxform:XTextBox>
                                    </td>
                                    <td width="158" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                    </td>
                                    <td width="158" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                    </td>
                                </tr>
                                <tr>
                                    <td class="xtbd">
                                        物料编码</td>
                                    <td>
                                        <aspxform:XTextBox id="XTextBox3" runat="server" BorderWidth="1" BorderColor="#DCDCDC" width="100%" XDataBind="SFDATA:proc_pur_task.mat_code"></aspxform:XTextBox>
                                    </td>
                                    <td class="xtbd">
                                        物料名称</td>
                                    <td>
                                        <aspxform:XTextBox id="XTextBox6" runat="server" BorderWidth="1" BorderColor="#DCDCDC" width="100%" XDataBind="SFDATA:proc_pur_task.mat_name"></aspxform:XTextBox>
                                    </td>
                                    <td class="xtbd">
                                        规格</td>
                                    <td>
                                        <aspxform:XTextBox id="XTextBox10" runat="server" BorderWidth="1" BorderColor="#DCDCDC" width="100%" XDataBind="SFDATA:proc_pur_task.mat_spec"></aspxform:XTextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="34" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                        申购数量</td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="XTextBox4" runat="server" BorderWidth="1" BorderColor="#DCDCDC" width="100%" XDataBind="SFDATA:proc_pur_task.pur_slnum"></aspxform:XTextBox>
                                    </td>
                                    <td class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                        单位</td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="XTextBox7" runat="server" BorderWidth="1" BorderColor="#DCDCDC" width="100%" XDataBind="SFDATA:proc_pur_task.pur_slnum_unit"></aspxform:XTextBox>
                                    </td>
                                    <td class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                        转化比例</td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="XTextBox11" runat="server" BorderWidth="1" BorderColor="#DCDCDC" width="100%" XDataBind="SFDATA:proc_pur_task.sl_st_scale"></aspxform:XTextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="32" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                        基准数量</td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="XTextBox5" runat="server" BorderWidth="1" BorderColor="#DCDCDC" width="100%" XDataBind="SFDATA:proc_pur_task.pur_stnum"></aspxform:XTextBox>
                                    </td>
                                    <td class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                        基准单位</td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="XTextBox8" runat="server" BorderWidth="1" BorderColor="#DCDCDC" width="100%" XDataBind="SFDATA:proc_pur_task.pur_stnum_unit"></aspxform:XTextBox>
                                    </td>
                                    <td class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                        计划单价</td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="XTextBox12" runat="server" BorderWidth="1" BorderColor="#DCDCDC" width="100%" XDataBind="SFDATA:proc_pur_task.plan_price"></aspxform:XTextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="34" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                        计划总金额</td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="XTextBox14" runat="server" BorderWidth="1" BorderColor="#DCDCDC" width="100%" XDataBind="SFDATA:proc_pur_task.item_price"></aspxform:XTextBox>
                                    </td>
                                    <td class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                        预计到货时间</td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="XTextBox9" runat="server" BorderWidth="1" BorderColor="#DCDCDC" width="100%" XDataBind="SFDATA:proc_pur_task.plan_arrival_time"></aspxform:XTextBox>
                                    </td>
                                    <td class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                        是否紧急</td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XDropDownList id="XDropDownList5" runat="server" XDataBind="SFDATA:proc_pur_task.if_urg" Enabled="False" PromptText="--请选择--">
                                            <asp:ListItem Value="1">是</asp:ListItem>
                                            <asp:ListItem Value="2">否</asp:ListItem>
                                        </aspxform:XDropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="34" class="xttl" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none" colspan="6">
                                        询价供应商 &nbsp; 
                                        <aspxform:XAddBlockButton id="XAddBlockButton1" runat="server" TableName="proc_pur_enquiry" DataSource="SFDATA" Text="添加"></aspxform:XAddBlockButton>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <div align="center" style="BORDER-TOP: 0px; BORDER-RIGHT: 0px; WIDTH: 960px; WHITE-SPACE: nowrap; OVERFLOW-X: auto; BORDER-BOTTOM: 0px; MIN-HEIGHT: 200px; BORDER-LEFT: 0px">
                            <table width="1700" align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" border="0" cellspacing="0" cellpadding="0" dynamicarea="1,1">
                                <tbody>
                                    <tr>
                                        <td width="30" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                        </td>
                                        <td width="20" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                        </td>
                                        <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                            供应商名称</td>
                                        <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                            联系人</td>
                                        <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                            联系方式</td>
                                        <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                            预采购时间</td>
                                        <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                            预到货时间</td>
                                        <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                            是否化验</td>
                                        <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                            报价</td>
                                        <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                            是否含税</td>
                                        <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                            税率</td>
                                        <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                            是否含运费</td>
                                        <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                            增值税发票</td>
                                        <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                            总金额</td>
                                        <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                            附件</td>
                                    </tr>
                                    <tr>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XGridLineNo id="XGridLineNo1" runat="server" BorderWidth="1" BackColor="White" TextAlign="Center" BorderStyle="None" Width="100%">1</aspxform:XGridLineNo>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XRadioButton id="XRadioButton1" runat="server"></aspxform:XRadioButton>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XTextBox id="XTextBox17" runat="server" BorderWidth="1" BorderColor="#DCDCDC" width="70%" XDataBind="SFDATA:proc_pur_enquiry.vendor_name"></aspxform:XTextBox>
                                            <aspxform:XDataBrowserButton id="XDataBrowserButton1" runat="server" Width="21px"></aspxform:XDataBrowserButton>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XTextBox id="XTextBox18" runat="server" BorderWidth="1" BorderColor="#DCDCDC" width="100%" XDataBind="SFDATA:proc_pur_enquiry.contact"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XTextBox id="XTextBox19" runat="server" BorderWidth="1" BorderColor="#DCDCDC" width="100%" XDataBind="SFDATA:proc_pur_enquiry.phonenumber"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XDateTimePicker id="XDateTimePicker1" runat="server" BorderWidth="1" BorderColor="#DCDCDC" XDataBind="SFDATA:proc_pur_enquiry.plan_pur_time"></aspxform:XDateTimePicker>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XDateTimePicker id="XDateTimePicker2" runat="server" BorderWidth="1" BorderColor="#DCDCDC" XDataBind="SFDATA:proc_pur_enquiry.plan_arrival_time"></aspxform:XDateTimePicker>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XDropDownList id="XDropDownList1" runat="server" XDataBind="SFDATA:proc_pur_enquiry.if_tests" PromptText="--请选择--">
                                                <asp:ListItem Value="1">是</asp:ListItem>
                                                <asp:ListItem Value="2">否</asp:ListItem>
                                            </aspxform:XDropDownList>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XTextBox id="XTextBox20" runat="server" BorderWidth="1" BorderColor="#DCDCDC" width="100%" XDataBind="SFDATA:proc_pur_enquiry.quotation"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XDropDownList id="XDropDownList2" runat="server" XDataBind="SFDATA:proc_pur_enquiry.if_tax" PromptText="--请选择--">
                                                <asp:ListItem Value="1">是</asp:ListItem>
                                                <asp:ListItem Value="2">否</asp:ListItem>
                                            </aspxform:XDropDownList>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XTextBox id="XTextBox21" runat="server" BorderWidth="1" BorderColor="#DCDCDC" width="100%" XDataBind="SFDATA:proc_pur_enquiry.tax_rate"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XDropDownList id="XDropDownList3" runat="server" XDataBind="SFDATA:proc_pur_enquiry.if_freight" PromptText="--请选择--">
                                                <asp:ListItem Value="1">是</asp:ListItem>
                                                <asp:ListItem Value="2">否</asp:ListItem>
                                            </aspxform:XDropDownList>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XDropDownList id="XDropDownList4" runat="server" XDataBind="SFDATA:proc_pur_enquiry.if_vat_ticket" PromptText="--请选择--">
                                                <asp:ListItem Value="1">是</asp:ListItem>
                                                <asp:ListItem Value="2">否</asp:ListItem>
                                            </aspxform:XDropDownList>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XTextBox id="XTextBox22" runat="server" BorderWidth="1" BorderColor="#DCDCDC" width="100%" XDataBind="SFDATA:proc_pur_enquiry.total_price"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XAttachments id="XAttachments1" runat="server" width="100%" XDataBind="SFDATA:proc_pur_enquiry.attachment" FileTypes="*.doc;*.docx;*.xls;*.xlsx;*.pdf;*.png;*.jpg;*.jpeg;*.gif" FileTypesDescription="Word,Excel,Pdf"></aspxform:XAttachments>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </td>
                </tr>
            </tbody>
        </table>
        <table width="960" align="center" border="0" cellspacing="0" cellpadding="0">
            <tbody>
                <tr>
                    <td width="160">
                        <aspxform:XTextBox id="xtxtPurTaskId" runat="server" BorderWidth="1" BorderColor="#DCDCDC" width="100%" XDataBind="SFDATA:proc_pur_enquiry.pur_task_id" ValueToDisplayText></aspxform:XTextBox>
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
                        <aspxform:XTextBox id="XTextBox13" runat="server" BorderWidth="1" BorderColor="#DCDCDC" width="100%" XDataBind="SFDATA:proc_pur_enquiry.state">1</aspxform:XTextBox>
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
                        <aspxform:XTextBox id="XTextBox15" runat="server" BorderWidth="1" BorderColor="#DCDCDC" width="100%" XDataBind="SFDATA:proc_pur_task.task_state">2</aspxform:XTextBox>
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
