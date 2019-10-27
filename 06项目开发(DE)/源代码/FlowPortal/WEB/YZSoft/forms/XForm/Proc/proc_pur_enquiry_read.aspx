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
                                        <aspxform:XTextBox id="XTextBox1" runat="server" DisableExpress="1" XDataBind="SFDATA:proc_pur_task.CompanyName" width="100%" BorderColor="#DCDCDC"></aspxform:XTextBox>
                                    </td>
                                    <td width="158" class="xtbd" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        部门</td>
                                    <td width="158" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="XTextBox2" runat="server" DisableExpress="1" XDataBind="SFDATA:proc_pur_task.DeptName" width="100%" BorderColor="#DCDCDC"></aspxform:XTextBox>
                                    </td>
                                    <td width="158" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                    </td>
                                    <td width="158" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                    </td>
                                </tr>
                                <tr>
                                    <td class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        物料编码</td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="XTextBox3" runat="server" DisableExpress="1" XDataBind="SFDATA:proc_pur_task.mat_code" width="100%" BorderColor="#DCDCDC"></aspxform:XTextBox>
                                    </td>
                                    <td class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        物料名称</td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="XTextBox6" runat="server" DisableExpress="1" XDataBind="SFDATA:proc_pur_task.mat_name" width="100%" BorderColor="#DCDCDC"></aspxform:XTextBox>
                                    </td>
                                    <td class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        规格</td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="XTextBox10" runat="server" DisableExpress="1" XDataBind="SFDATA:proc_pur_task.mat_spec" width="100%" BorderColor="#DCDCDC"></aspxform:XTextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="34" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        申购数量</td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="XTextBox4" runat="server" DisableExpress="1" XDataBind="SFDATA:proc_pur_task.pur_slnum" width="100%" BorderColor="#DCDCDC"></aspxform:XTextBox>
                                    </td>
                                    <td class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        单位</td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="XTextBox7" runat="server" DisableExpress="1" XDataBind="SFDATA:proc_pur_task.pur_slnum_unit" width="100%" BorderColor="#DCDCDC"></aspxform:XTextBox>
                                    </td>
                                    <td class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        转化比例</td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="XTextBox11" runat="server" DisableExpress="1" XDataBind="SFDATA:proc_pur_task.sl_st_scale" width="100%" BorderColor="#DCDCDC"></aspxform:XTextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="32" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        基准数量</td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="XTextBox5" runat="server" DisableExpress="1" XDataBind="SFDATA:proc_pur_task.pur_stnum" width="100%" BorderColor="#DCDCDC"></aspxform:XTextBox>
                                    </td>
                                    <td class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        基准单位</td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="XTextBox8" runat="server" DisableExpress="1" XDataBind="SFDATA:proc_pur_task.pur_stnum_unit" width="100%" BorderColor="#DCDCDC"></aspxform:XTextBox>
                                    </td>
                                    <td class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        计划单价</td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="XTextBox12" runat="server" DisableExpress="1" XDataBind="SFDATA:proc_pur_task.plan_price" width="100%" BorderColor="#DCDCDC"></aspxform:XTextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="34" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        计划总金额</td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="XTextBox14" runat="server" DisableExpress="1" XDataBind="SFDATA:proc_pur_task.item_price" width="100%" BorderColor="#DCDCDC"></aspxform:XTextBox>
                                    </td>
                                    <td class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        预计到货时间</td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XDateTimePicker id="XDateTimePicker3" runat="server" XDataBind="SFDATA:proc_pur_task.plan_arrival_time" BorderColor="#DCDCDC" DisplayOnly="True" Width="100%"></aspxform:XDateTimePicker>
                                    </td>
                                    <td class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none">
                                        是否紧急</td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none">
                                        <aspxform:XDropDownList id="XDropDownList5" runat="server" DisableExpress="1" XDataBind="SFDATA:proc_pur_task.if_urg" PromptText="--请选择--">
                                            <asp:ListItem Value="2">否</asp:ListItem>
                                            <asp:ListItem Value="1">是</asp:ListItem>
                                        </aspxform:XDropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="34" class="xttl" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none" colspan="4">
                                        询价供应商 
                                    </td>
                                    <td align="right" class="xttl" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none" colspan="2">
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
                                            <aspxform:XGridLineNo id="XGridLineNo1" runat="server" Width="100%" BorderStyle="None" TextAlign="Center" BackColor="White">1</aspxform:XGridLineNo>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XTextBox id="XTextBox17" runat="server" DisableExpress="1" XDataBind="SFDATA:proc_pur_enquiry.vendor_name" width="100%" BorderColor="#DCDCDC"></aspxform:XTextBox>
                                            <aspxform:XTextBox id="XTextBox9" runat="server" DisableExpress="1" XDataBind="SFDATA:proc_pur_enquiry.vendor_id" width="120px" BorderColor="#DCDCDC" HiddenExpress="1" ValueToDisplayText="DataSource:SFDATA;TableName:ctl_vendor;FilterColumn:vendor_id;DisplayColumn:vendor_id" DataMap="vendor_contact->varContact;vendor_tel->varTel"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XTextBox id="XTextBox18" runat="server" DisableExpress="1" XDataBind="varContact" width="100%" BorderColor="#DCDCDC"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XTextBox id="XTextBox19" runat="server" DisableExpress="1" XDataBind="varTel" width="100%" BorderColor="#DCDCDC"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XDateTimePicker id="XDateTimePicker1" runat="server" XDataBind="SFDATA:proc_pur_enquiry.plan_pur_time" BorderColor="#DCDCDC"></aspxform:XDateTimePicker>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XDateTimePicker id="XDateTimePicker2" runat="server" XDataBind="SFDATA:proc_pur_enquiry.plan_arrival_time" BorderColor="#DCDCDC"></aspxform:XDateTimePicker>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XDropDownList id="XDropDownList1" runat="server" XDataBind="SFDATA:proc_pur_enquiry.if_tests" Width="100%" PromptText="--请选择--">
                                                <asp:ListItem Value="1">是</asp:ListItem>
                                                <asp:ListItem Value="0">否</asp:ListItem>
                                            </aspxform:XDropDownList>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XTextBox id="XTextBox20" runat="server" XDataBind="SFDATA:proc_pur_enquiry.quotation" width="100%" BorderColor="#DCDCDC"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XDropDownList id="XDropDownList2" runat="server" XDataBind="SFDATA:proc_pur_enquiry.if_tax" Width="100%" PromptText="--请选择--">
                                                <asp:ListItem Value="1">是</asp:ListItem>
                                                <asp:ListItem Value="2">否</asp:ListItem>
                                            </aspxform:XDropDownList>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XTextBox id="XTextBox21" runat="server" XDataBind="SFDATA:proc_pur_enquiry.tax_rate" width="100%" BorderColor="#DCDCDC"></aspxform:XTextBox>
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
                                            <aspxform:XTextBox id="XTextBox22" runat="server" XDataBind="SFDATA:proc_pur_enquiry.total_price" width="100%" BorderColor="#DCDCDC"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XAttachments id="XAttachments1" runat="server" XDataBind="SFDATA:proc_pur_enquiry.attachment" width="100%" FileTypesDescription="Word,Excel,Pdf" FileTypes="*.doc;*.docx;*.xls;*.xlsx;*.pdf;*.png;*.jpg;*.jpeg;*.gif"></aspxform:XAttachments>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <table width="960" align="center" border="0" cellspacing="0" cellpadding="0">
                            <tbody>
                                <tr>
                                    <td width="960" class="xttl">
                                        确认供应商</td>
                                </tr>
                            </tbody>
                        </table>
                        <div align="center">
                            <div align="center" style="BORDER-TOP: 0px; BORDER-RIGHT: 0px; WIDTH: 960px; WHITE-SPACE: nowrap; OVERFLOW-X: auto; BORDER-BOTTOM: 0px; MIN-HEIGHT: 200px; BORDER-LEFT: 0px">
                                <div align="left">
                                    <table width="1450" align="center" id="tb1" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" border="0" cellspacing="0" cellpadding="0" dynamicarea="1,1" datamap="vendor_id->varvendor_id;vendor_name->varvendor_name;plan_pur_time->varplan_pur_time;plan_arrival_time->varplan_arrival_time;quotation->varquotation;if_tax->varif_tax;tax_rate->vartax_rate;if_freight->varif_freight;total_price->vartotal_price;if_vat_ticket->varif_vat_ticket;if_tests->varif_tests;Attachment->varattachment" xdatasource="DataSource:SFDATA;TableName:proc_pur_enquiry;Filter:pur_task_id->SFDATA:proc_pur_task.pur_task_id,vendor_id->SFDATA:proc_pur_task.vendor_id">
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
                                                    <aspxform:XGridLineNo id="XGridLineNo2" runat="server" Width="100%" BorderStyle="None" TextAlign="Center" BackColor="White">1</aspxform:XGridLineNo>
                                                </td>
                                                <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                                    <aspxform:XTextBox id="XTextBox13" runat="server" DisableExpress="1" XDataBind="varvendor_name" width="100%" BorderColor="#DCDCDC"></aspxform:XTextBox>
                                                    <aspxform:XTextBox id="XTextBox15" runat="server" DisableExpress="1" XDataBind="varvendor_id" width="120px" BorderColor="#DCDCDC" HiddenExpress="1" ValueToDisplayText="DataSource:SFDATA;TableName:ctl_vendor;FilterColumn:vendor_id;DisplayColumn:vendor_id" DataMap="vendor_contact->varContact1;vendor_tel->varTel1"></aspxform:XTextBox>
                                                </td>
                                                <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                                    <aspxform:XTextBox id="XTextBox16" runat="server" DisableExpress="1" XDataBind="varContact1" width="100%" BorderColor="#DCDCDC"></aspxform:XTextBox>
                                                </td>
                                                <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                                    <aspxform:XTextBox id="XTextBox23" runat="server" DisableExpress="1" XDataBind="varTel1" width="100%" BorderColor="#DCDCDC"></aspxform:XTextBox>
                                                </td>
                                                <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                                    <aspxform:XDateTimePicker id="XDateTimePicker4" runat="server" DisableExpress="1" XDataBind="varplan_pur_time" BorderColor="#DCDCDC" DisplayOnly="True"></aspxform:XDateTimePicker>
                                                </td>
                                                <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                                    <aspxform:XDateTimePicker id="XDateTimePicker5" runat="server" DisableExpress="1" XDataBind="varplan_arrival_time" BorderColor="#DCDCDC" DisplayOnly="True"></aspxform:XDateTimePicker>
                                                </td>
                                                <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                                    <aspxform:XDropDownList id="XDropDownList6" runat="server" DisableExpress="1" XDataBind="varif_tests" Width="100%" PromptText="--请选择--">
                                                        <asp:ListItem Value="1">是</asp:ListItem>
                                                        <asp:ListItem Value="0">否</asp:ListItem>
                                                    </aspxform:XDropDownList>
                                                </td>
                                                <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                                    <aspxform:XTextBox id="XTextBox24" runat="server" DisableExpress="1" XDataBind="varquotation" width="100%" BorderColor="#DCDCDC"></aspxform:XTextBox>
                                                </td>
                                                <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                                    <aspxform:XDropDownList id="XDropDownList7" runat="server" DisableExpress="1" XDataBind="varif_tax" Width="100%" PromptText="--请选择--">
                                                        <asp:ListItem Value="1">是</asp:ListItem>
                                                        <asp:ListItem Value="2">否</asp:ListItem>
                                                    </aspxform:XDropDownList>
                                                </td>
                                                <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                                    <aspxform:XTextBox id="XTextBox25" runat="server" DisableExpress="1" XDataBind="vartax_rate" width="100%" BorderColor="#DCDCDC"></aspxform:XTextBox>
                                                </td>
                                                <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                                    <aspxform:XDropDownList id="XDropDownList8" runat="server" DisableExpress="1" XDataBind="varif_freight" Width="100%" PromptText="--请选择--">
                                                        <asp:ListItem Value="1">是</asp:ListItem>
                                                        <asp:ListItem Value="2">否</asp:ListItem>
                                                    </aspxform:XDropDownList>
                                                </td>
                                                <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                                    <aspxform:XDropDownList id="XDropDownList9" runat="server" DisableExpress="1" XDataBind="varif_vat_ticket" Width="100%" PromptText="--请选择--">
                                                        <asp:ListItem Value="1">是</asp:ListItem>
                                                        <asp:ListItem Value="2">否</asp:ListItem>
                                                    </aspxform:XDropDownList>
                                                </td>
                                                <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                                    <aspxform:XTextBox id="XTextBox26" runat="server" DisableExpress="1" XDataBind="vartotal_price" width="100%" BorderColor="#DCDCDC"></aspxform:XTextBox>
                                                </td>
                                                <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                                    <aspxform:XAttachments id="XAttachments2" runat="server" DisableExpress="1" XDataBind="varattachment" width="100%" FileTypesDescription="Word,Excel,Pdf" FileTypes="*.doc;*.docx;*.xls;*.xlsx;*.pdf;*.png;*.jpg;*.jpeg;*.gif"></aspxform:XAttachments>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
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
                        供应商id</td>
                    <td width="154">
                        <aspxform:XTextBox id="tbVendorId" runat="server" DisableExpress="1" XDataBind="SFDATA:proc_pur_task.vendor_id" width="100%" BorderColor="#DCDCDC" ValueToDisplayText="DataSource:SFDATA;TableName:ctl_vendor;FilterColumn:vendor_id;DisplayColumn:vendor_id" DataMap="vendor_name->SFDATA:proc_pur_task.vendor_name"></aspxform:XTextBox>
                    </td>
                    <td width="154">
                    </td>
                </tr>
                <tr>
                    <td height="34">
                        供应商名称</td>
                    <td>
                        <aspxform:XTextBox id="tbVendorName" runat="server" DisableExpress="1" XDataBind="SFDATA:proc_pur_task.vendor_name" width="100%" BorderColor="#DCDCDC"></aspxform:XTextBox>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td height="34">
                        任务id</td>
                    <td>
                        <aspxform:XTextBox id="XTextBox27" runat="server" DisableExpress="1" XDataBind="SFDATA:proc_pur_task.pur_task_id" width="100%" BorderColor="#DCDCDC" ValueToDisplayText></aspxform:XTextBox>
                    </td>
                    <td>
                    </td>
                </tr>
            </tbody>
        </table>
    </form>
</body>
</html>
