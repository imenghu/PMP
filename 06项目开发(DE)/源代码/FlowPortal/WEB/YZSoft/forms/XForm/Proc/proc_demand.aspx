<%@ Page Language="C#" %>
<%@ Register TagPrefix="aspxform" Namespace="XFormDesigner.Framework.Web.UI" Assembly="XFormDesigner.Framework" %>
<script runat="server">

    // Insert page code here
    //

</script>
<html xmlns:XForm="xmlns:xform">
<head runat="server">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge" />
    <title>BPM Form</title>
    <link href="../../style/FormGray.css" rel="stylesheet" />
    <script src="../../scripts/My97DatePicker/WdatePicker.js"></script>
</head>
<body>
    <form runat="server">
        <!-- Insert content here -->
        <table align="center">
            <tbody>
                <tr>
                    <td>
                        <table width="960" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" border="0" cellspacing="0" cellpadding="0">
                            <tbody>
                                <tr>
                                    <td width="320" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                    </td>
                                    <td width="320" align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                        <strong><font size="5">采购需求</font></strong></td>
                                    <td width="320" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <table width="960" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" border="0" cellspacing="0" cellpadding="0">
                            <tbody>
                                <tr>
                                    <td width="151" height="34" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                        公司</td>
                                    <td width="161" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="XTextBox26" runat="server" FieldName="公司" DisableExpress="1" BorderColor="#DCDCDC" BorderWidth="1" width="100%" XDataBind="SFDATA:proc_demand.CompanyName"></aspxform:XTextBox>
                                    </td>
                                    <td width="161" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                        部门</td>
                                    <td width="151" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="XTextBox10" runat="server" FieldName="部门" DisableExpress="1" BorderColor="#DCDCDC" BorderWidth="1" width="100%" XDataBind="SFDATA:proc_demand.DeptName"></aspxform:XTextBox>
                                    </td>
                                    <td width="161" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                        提报人</td>
                                    <td width="161" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                        <aspxform:XTextBox id="XTextBox25" runat="server" FieldName="提交人" BorderColor="#DCDCDC" BorderWidth="1" width="100%" XDataBind="SFDATA:proc_demand.CreateUserName"></aspxform:XTextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="84" class="xfld" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                                        备注</td>
                                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none" colspan="5">
                                        <aspxform:XTextBox id="XTextBox1" runat="server" FieldName="备注" BorderColor="#DCDCDC" BorderWidth="1" width="100%" XDataBind="SFDATA:proc_demand.demand_remarks" TextMode="MultiLine" Rows="5"></aspxform:XTextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="34" class="xttl" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none" colspan="4">
                                        采购明细</td>
                                    <td align="right" class="xttl" colspan="2">
                                        <aspxform:XDataBrowserButton id="XDataBrowserButton2" runat="server" Text="选择物料" XDataSource="DataSource:SFDATA;TableName:ctl_material" DisplayColumns="mat_code:物料编码;mat_name:物料名称;mat_spec:规格;base_unit:基准单位" DataMap="mat_code->SFDATA:proc_demand_detail.mat_code;mat_name->SFDATA:proc_demand_detail.mat_name;mat_spec->SFDATA:proc_demand_detail.mat_spec" MultiSelect="True"></aspxform:XDataBrowserButton>
                                        <aspxform:XAddBlockButton id="XAddBlockButton2" runat="server" Text="新增" TableName="proc_demand_detail" DataSource="SFDATA"></aspxform:XAddBlockButton>
                                        <aspxform:XExcelDataImportButton id="XExcelDataImportButton2" runat="server" text="Excel导入"></aspxform:XExcelDataImportButton>
                                        <aspxform:XExcelDataExportButton id="XExcelDataExportButton1" runat="server" Text="Excel导出" ExportTableID="tbDetail"></aspxform:XExcelDataExportButton>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <div style="BORDER-TOP: 0px; BORDER-RIGHT: 0px; WIDTH: 960px; WHITE-SPACE: nowrap; OVERFLOW-X: auto; BORDER-BOTTOM: 0px; MIN-HEIGHT: 200px; BORDER-LEFT: 0px">
                            <table width="1000" id="tbDetail" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" border="0" cellspacing="0" cellpadding="0" dynamicarea="1,1">
                                <tbody>
                                    <tr>
                                        <td width="50" height="34" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                                            序号</td>
                                        <td width="150" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            物料名称</td>
                                        <td width="93" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            物料编码</td>
                                        <td width="93" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            规格</td>
                                        <td width="93" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            采购单位</td>
                                        <td width="93" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            采购数量</td>
                                        <td width="93" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            计划单价</td>
                                        <td width="80" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            是否紧急</td>
                                        <td width="200" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            用途</td>
                                        <td width="100" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            备注</td>
                                    </tr>
                                    <tr>
                                        <td height="34" style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid">
                                            <aspxform:XGridLineNo id="XGridLineNo1" runat="server" BorderWidth="1" BackColor="Transparent" TextAlign="Center" BorderStyle="None" Width="100%">1</aspxform:XGridLineNo>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XTextBox id="XTextBox2" runat="server" FieldName="物料名称" BorderColor="#DCDCDC" BorderWidth="1" width="120px" XDataBind="SFDATA:proc_demand_detail.mat_code"></aspxform:XTextBox>
                                            <aspxform:XDataBrowserButton id="XDataBrowserButton1" runat="server" Width="21px" XDataSource="DataSource:SFDATA;TableName:ctl_material" DisplayColumns="mat_code:物料编码;mat_name:物料名称;mat_spec:规格;base_unit:基准单位" DataMap="mat_code->SFDATA:proc_demand_detail.mat_code;mat_name->SFDATA:proc_demand_detail.mat_name;mat_spec->SFDATA:proc_demand_detail.mat_spec"></aspxform:XDataBrowserButton>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XTextBox id="XTextBox3" runat="server" FieldName="物料编码" BorderColor="#DCDCDC" BorderWidth="1" width="100%" XDataBind="SFDATA:proc_demand_detail.mat_name"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XTextBox id="XTextBox4" runat="server" FieldName="规格" BorderColor="#DCDCDC" BorderWidth="1" width="100%" XDataBind="SFDATA:proc_demand_detail.mat_spec"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XTextBox id="XTextBox5" runat="server" FieldName="采购单位" BorderColor="#DCDCDC" BorderWidth="1" width="100%" XDataBind="SFDATA:proc_demand_detail.plan_pnum_unit"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XTextBox id="XTextBox6" runat="server" FieldName="采购数量" BorderColor="#DCDCDC" BorderWidth="1" width="100%" XDataBind="SFDATA:proc_demand_detail.plan_pnum"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XTextBox id="XTextBox7" runat="server" FieldName="计划单价" BorderColor="#DCDCDC" BorderWidth="1" width="100%" XDataBind="SFDATA:proc_demand_detail.plan_price"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XDropDownList id="XDropDownList1" runat="server" FieldName="是否紧急" XDataBind="SFDATA:proc_demand_detail.if_urg" Width="100%">
                                                <asp:ListItem Selected="True">否</asp:ListItem>
                                                <asp:ListItem>是</asp:ListItem>
                                            </aspxform:XDropDownList>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XTextBox id="XTextBox9" runat="server" FieldName="用途" BorderColor="#DCDCDC" BorderWidth="1" width="100%" XDataBind="SFDATA:proc_demand_detail.uses"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid; BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none">
                                            <aspxform:XTextBox id="XTextBox11" runat="server" FieldName="备注" BorderColor="#DCDCDC" BorderWidth="1" width="100%" XDataBind="SFDATA:proc_demand_detail.demand_detail_remarks"></aspxform:XTextBox>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <br />
                        <table width="100%" border="0" cellspacing="0" cellpadding="0" hiddenexpress="1">
                            <tbody>
                                <tr>
                                    <td width="33%">
                                    </td>
                                    <td width="33%">
                                    </td>
                                    <td width="34%">
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        CreateUser</td>
                                    <td>
                                        <aspxform:XTextBox id="XTextBox8" onclick="WdatePicker({dateFmt:'yyyy'})" runat="server" BorderColor="#DCDCDC" BorderWidth="1" width="100%" XDataBind="SFDATA:proc_demand.CreateUser"></aspxform:XTextBox>
                                    </td>
                                    <td>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        State</td>
                                    <td>
                                        <aspxform:XTextBox id="XTextBox27" runat="server" BorderColor="#DCDCDC" BorderWidth="1" width="100%" XDataBind="varState">1</aspxform:XTextBox>
                                    </td>
                                    <td>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Company</td>
                                    <td>
                                        <aspxform:XTextBox id="XTextBox28" runat="server" BorderColor="#DCDCDC" BorderWidth="1" width="130px" XDataBind="SFDATA:proc_demand.Company"></aspxform:XTextBox>
                                    </td>
                                    <td>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Dept</td>
                                    <td>
                                        <aspxform:XTextBox id="XTextBox29" runat="server" BorderColor="#DCDCDC" BorderWidth="1" width="130px" XDataBind="SFDATA:proc_demand.Dept"></aspxform:XTextBox>
                                    </td>
                                    <td>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table>
    </form>
</body>
</html>
