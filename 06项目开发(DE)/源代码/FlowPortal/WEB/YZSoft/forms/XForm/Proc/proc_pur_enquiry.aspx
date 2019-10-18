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
        function getTaskState(val){
            return val==1?"2":"1";
        }
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
                        <table width="960" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" border="0" cellspacing="0" cellpadding="0">
                            <tbody>
                                <tr>
                                    <td width="320" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none">
                                    </td>
                                    <td width="320" align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none">
                                        <strong><font size="5">采购询价</font></strong></td>
                                    <td width="320" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none">
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <table width="960" align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" border="0" cellspacing="0" cellpadding="0">
                            <tbody>
                                <tr>
                                    <td width="158" height="34" class="xtbd" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        公司</td>
                                    <td width="158" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="XTextBox1" runat="server" BorderColor="#DCDCDC" width="100%" XDataBind="SFDATA:proc_pur_task.CompanyName" DisableExpress="1"></aspxform:XTextBox>
                                    </td>
                                    <td width="158" class="xtbd" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        部门</td>
                                    <td width="158" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="XTextBox2" runat="server" BorderColor="#DCDCDC" width="100%" XDataBind="SFDATA:proc_pur_task.DeptName" DisableExpress="1"></aspxform:XTextBox>
                                    </td>
                                    <td width="158" class="xfld" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        是否提交审核</td>
                                    <td width="158" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XDropDownList id="XDropDownList6" runat="server" XDataBind="varIsSubmit" PromptText="--请选择--">
                                            <asp:ListItem Value="1">是</asp:ListItem>
                                            <asp:ListItem Value="0">否</asp:ListItem>
                                        </aspxform:XDropDownList>
                                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator1" runat="server" Display="None" ForeColor="Red" ErrorMessage="请选择是否提交审核?选择是,会提交询价到采购部经理审核" ControlToValidate="XDropDownList6">是否提交</aspxform:XRequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        物料编码</td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="XTextBox3" runat="server" BorderColor="#DCDCDC" width="100%" XDataBind="SFDATA:proc_pur_task.mat_code" DisableExpress="1"></aspxform:XTextBox>
                                    </td>
                                    <td class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        物料名称</td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="XTextBox6" runat="server" BorderColor="#DCDCDC" width="100%" XDataBind="SFDATA:proc_pur_task.mat_name" DisableExpress="1"></aspxform:XTextBox>
                                    </td>
                                    <td class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        规格</td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="XTextBox10" runat="server" BorderColor="#DCDCDC" width="100%" XDataBind="SFDATA:proc_pur_task.mat_spec" DisableExpress="1"></aspxform:XTextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="34" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        申购数量</td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="XTextBox4" runat="server" BorderColor="#DCDCDC" width="100%" XDataBind="SFDATA:proc_pur_task.pur_slnum" DisableExpress="1"></aspxform:XTextBox>
                                    </td>
                                    <td class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        单位</td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="XTextBox7" runat="server" BorderColor="#DCDCDC" width="100%" XDataBind="SFDATA:proc_pur_task.pur_slnum_unit" DisableExpress="1"></aspxform:XTextBox>
                                    </td>
                                    <td class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        转化比例</td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="XTextBox11" runat="server" BorderColor="#DCDCDC" width="100%" XDataBind="SFDATA:proc_pur_task.sl_st_scale" DisableExpress="1"></aspxform:XTextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="32" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        基准数量</td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="XTextBox5" runat="server" BorderColor="#DCDCDC" width="100%" XDataBind="SFDATA:proc_pur_task.pur_stnum" DisableExpress="1"></aspxform:XTextBox>
                                    </td>
                                    <td class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        基准单位</td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="XTextBox8" runat="server" BorderColor="#DCDCDC" width="100%" XDataBind="SFDATA:proc_pur_task.pur_stnum_unit" DisableExpress="1"></aspxform:XTextBox>
                                    </td>
                                    <td class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        计划单价</td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="XTextBox12" runat="server" BorderColor="#DCDCDC" width="100%" XDataBind="SFDATA:proc_pur_task.plan_price" DisableExpress="1"></aspxform:XTextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="34" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        计划总金额</td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="XTextBox14" runat="server" BorderColor="#DCDCDC" width="100%" XDataBind="SFDATA:proc_pur_task.item_price" DisableExpress="1"></aspxform:XTextBox>
                                    </td>
                                    <td class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        预计到货时间</td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XDateTimePicker id="XDateTimePicker3" runat="server" BorderColor="#DCDCDC" XDataBind="SFDATA:proc_pur_task.plan_arrival_time" Width="100%" DisplayOnly="True"></aspxform:XDateTimePicker>
                                    </td>
                                    <td class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none">
                                        是否紧急</td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none">
                                        <aspxform:XDropDownList id="XDropDownList5" runat="server" XDataBind="SFDATA:proc_pur_task.if_urg" DisableExpress="1" PromptText="--请选择--">
                                            <asp:ListItem Value="0">否</asp:ListItem>
                                            <asp:ListItem Value="1">是</asp:ListItem>
                                        </aspxform:XDropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="34" class="xttl" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none" colspan="4">
                                        询价供应商&nbsp;&nbsp; 
                                    </td>
                                    <td align="right" class="xttl" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none" colspan="2">
                                        <aspxform:XAddBlockButton id="XAddBlockButton1" runat="server" TableName="proc_pur_enquiry" DataSource="SFDATA" Text="新增"></aspxform:XAddBlockButton>
                                        <aspxform:XExcelDataExportButton id="XExcelDataExportButton1" runat="server" Text="导出Excel" ExportTableID="tb1"></aspxform:XExcelDataExportButton>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <div align="center" style="BORDER-TOP: 0px; BORDER-RIGHT: 0px; WIDTH: 960px; WHITE-SPACE: nowrap; OVERFLOW-X: auto; BORDER-BOTTOM: 0px; MIN-HEIGHT: 200px; BORDER-LEFT: 0px">
                            <table width="1450" align="center" id="tb1" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" border="0" cellspacing="0" cellpadding="0" dynamicarea="1,1">
                                <tbody>
                                    <tr>
                                        <td width="58" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                                            序号</td>
                                        <td width="150" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            供应商名称</td>
                                        <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            联系人</td>
                                        <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            联系方式</td>
                                        <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            预采购时间</td>
                                        <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            预到货时间</td>
                                        <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            是否化验</td>
                                        <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            报价</td>
                                        <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            是否含税</td>
                                        <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            税率</td>
                                        <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            是否含运费</td>
                                        <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            增值税发票</td>
                                        <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            总金额</td>
                                        <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            附件</td>
                                    </tr>
                                    <tr>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                                            <aspxform:XGridLineNo id="XGridLineNo1" runat="server" Width="100%" BackColor="White" TextAlign="Center" BorderStyle="None">1</aspxform:XGridLineNo>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XTextBox id="XTextBox17" runat="server" BorderColor="#DCDCDC" width="110px" XDataBind="SFDATA:proc_pur_enquiry.vendor_name" DisableExpress="1"></aspxform:XTextBox>
                                            <aspxform:XDataBrowserButton id="XDataBrowserButton1" runat="server" Width="21px" XDataSource="DataSource:SFDATA;TableName:ctl_vendor" DisplayColumns="vendor_name:供应商名称;vendor_contact:联系人;vendor_tel:联系电话;vendor_email:邮箱;vendor_addr:地址;vendor_wechat:微信;vendor_qq:QQ" DataMap="vendor_id->SFDATA:proc_pur_enquiry.vendor_id"></aspxform:XDataBrowserButton>
                                            <aspxform:XTextBox id="XTextBox9" runat="server" BorderColor="#DCDCDC" width="120px" XDataBind="SFDATA:proc_pur_enquiry.vendor_id" DisableExpress="1" DataMap="vendor_code->SFDATA:proc_pur_enquiry.vendor_code;vendor_name->SFDATA:proc_pur_enquiry.vendor_name;vendor_contact->varContact;vendor_tel->varTel" ValueToDisplayText="DataSource:SFDATA;TableName:ctl_vendor;FilterColumn:vendor_id;DisplayColumn:vendor_id" HiddenExpress="1"></aspxform:XTextBox>
                                            <aspxform:XTextBox id="XTextBox16" runat="server" BorderColor="#DCDCDC" width="120px" XDataBind="SFDATA:proc_pur_enquiry.vendor_code" DisableExpress="1" HiddenExpress="1"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XTextBox id="XTextBox18" runat="server" BorderColor="#DCDCDC" width="100%" XDataBind="varContact" DisableExpress="1"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XTextBox id="XTextBox19" runat="server" BorderColor="#DCDCDC" width="100%" XDataBind="varTel" DisableExpress="1"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XDateTimePicker id="XDateTimePicker1" runat="server" BorderColor="#DCDCDC" XDataBind="SFDATA:proc_pur_enquiry.plan_pur_time"></aspxform:XDateTimePicker>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XDateTimePicker id="XDateTimePicker2" runat="server" BorderColor="#DCDCDC" XDataBind="SFDATA:proc_pur_enquiry.plan_arrival_time"></aspxform:XDateTimePicker>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XDropDownList id="XDropDownList1" runat="server" XDataBind="SFDATA:proc_pur_enquiry.if_tests" Width="100%" PromptText="--请选择--">
                                                <asp:ListItem Value="1">是</asp:ListItem>
                                                <asp:ListItem Value="0">否</asp:ListItem>
                                            </aspxform:XDropDownList>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XTextBox id="XTextBox20" runat="server" BorderColor="#DCDCDC" width="100%" XDataBind="SFDATA:proc_pur_enquiry.quotation"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XDropDownList id="XDropDownList2" runat="server" XDataBind="SFDATA:proc_pur_enquiry.if_tax" Width="100%" PromptText="--请选择--">
                                                <asp:ListItem Value="1">是</asp:ListItem>
                                                <asp:ListItem Value="2">否</asp:ListItem>
                                            </aspxform:XDropDownList>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XTextBox id="XTextBox21" runat="server" BorderColor="#DCDCDC" width="100%" XDataBind="SFDATA:proc_pur_enquiry.tax_rate"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XDropDownList id="XDropDownList3" runat="server" XDataBind="SFDATA:proc_pur_enquiry.if_freight" Width="100%" PromptText="--请选择--">
                                                <asp:ListItem Value="1">是</asp:ListItem>
                                                <asp:ListItem Value="2">否</asp:ListItem>
                                            </aspxform:XDropDownList>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XDropDownList id="XDropDownList4" runat="server" XDataBind="SFDATA:proc_pur_enquiry.if_vat_ticket" Width="100%" PromptText="--请选择--">
                                                <asp:ListItem Value="1">是</asp:ListItem>
                                                <asp:ListItem Value="2">否</asp:ListItem>
                                            </aspxform:XDropDownList>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XTextBox id="XTextBox22" runat="server" BorderColor="#DCDCDC" width="100%" XDataBind="SFDATA:proc_pur_enquiry.total_price"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
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
        <br />
        <table width="462" align="center" border="0" cellspacing="0" cellpadding="0" hiddenexpress="1">
            <tbody>
                <tr>
                    <td width="154" height="34">
                        任务状态</td>
                    <td width="154">
                        <aspxform:XTextBox id="XTextBox15" runat="server" BorderColor="#DCDCDC" width="100%" XDataBind="SFDATA:proc_pur_task.task_state" Express="javascript('getTaskState',varIsSubmit)">2</aspxform:XTextBox>
                    </td>
                    <td width="154">
                    </td>
                </tr>
                <tr>
                    <td height="34">
                    </td>
                    <td>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td height="34">
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
                </tr>
            </tbody>
        </table>
    </form>
</body>
</html>
