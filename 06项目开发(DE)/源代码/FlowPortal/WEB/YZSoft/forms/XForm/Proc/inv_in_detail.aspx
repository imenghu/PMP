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
            if(purtaskid!=null){
                Ext.get("xtxtPurTaskId").down('.yz-xform-field-ele').dom.value = purtaskid;
                XFormOnChange(document.getElementById("xtxtPurTaskId"));
            }
        })
    </script>
</head>
<body>
    <form runat="server">
        <!-- Insert content here -->
        <table width="960" align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" border="0" cellspacing="0" cellpadding="0">
            <tbody>
                <tr>
                    <td width="320" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none">
                    </td>
                    <td width="320" align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none">
                        <strong><font size="5">入库单</font></strong></td>
                    <td width="320" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none">
                    </td>
                </tr>
            </tbody>
        </table>
        <table width="960" align="center" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" border="0" cellspacing="0" cellpadding="0">
            <tbody>
                <tr>
                    <td width="158" height="34" class="xtbd" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        供应商名称</td>
                    <td width="158" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox2" runat="server" DisableExpress="1" XDataBind="SFDATA:inv_in_detail.vendor_name" BorderColor="#DCDCDC" width="100%"></aspxform:XTextBox>
                    </td>
                    <td width="158" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                    </td>
                    <td width="158" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                    </td>
                    <td width="158" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                    </td>
                    <td width="158" style="BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                    </td>
                </tr>
                <tr>
                    <td height="33" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        物料编码</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox10" runat="server" DisableExpress="1" XDataBind="SFDATA:inv_in_detail.mat_code" BorderColor="#DCDCDC" width="100%"></aspxform:XTextBox>
                    </td>
                    <td class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        物料名称</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox11" runat="server" DisableExpress="1" XDataBind="SFDATA:inv_in_detail.mat_name" BorderColor="#DCDCDC" width="100%"></aspxform:XTextBox>
                    </td>
                    <td class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        规格</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox3" runat="server" DisableExpress="1" XDataBind="SFDATA:inv_in_detail.mat_spesc" BorderColor="#DCDCDC" width="100%"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td height="34" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        是否化验</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XDropDownList id="XDropDownList4" runat="server" DisableExpress="1" XDataBind="SFDATA:inv_in_detail.if_tests">
                            <asp:ListItem Selected="True" Value="0">否</asp:ListItem>
                            <asp:ListItem Value="1">是</asp:ListItem>
                        </aspxform:XDropDownList>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none" colspan="4">
                        <table width="100%" border="0" cellspacing="0" cellpadding="0" hiddenexpress="SFDATA:inv_in_detail.if_tests!='1'">
                            <tbody>
                                <tr>
                                    <td width="25%" class="xtbd">
                                        化验结果</td>
                                    <td width="25%">
                                        <aspxform:XDropDownList id="XDropDownList3" runat="server" DisableExpress="1" XDataBind="vartestresult">
                                            <asp:ListItem Selected="True" Value="1">合格</asp:ListItem>
                                            <asp:ListItem Value="2">不合格（让步接收）</asp:ListItem>
                                            <asp:ListItem Value="3">不合格（不接受）</asp:ListItem>
                                        </aspxform:XDropDownList>
                                    </td>
                                    <td width="25%" class="xfld">
                                        化验单查询</td>
                                    <td width="25%">
                                        <aspxform:XChildFormLink id="XChildFormLink1" runat="server" FormApplication="Proc/proc_tests_read" Express="vartestsid">化验单</aspxform:XChildFormLink>
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
                        <aspxform:XTextBox id="XTextBox9" runat="server" DisableExpress="1" XDataBind="SFDATA:inv_in_detail.plan_in_slnum" BorderColor="#DCDCDC" width="100%"></aspxform:XTextBox>
                    </td>
                    <td class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        入库数量</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox13" runat="server" XDataBind="SFDATA:inv_in_detail.in_slnum" BorderColor="#DCDCDC" width="100%"></aspxform:XTextBox>
                    </td>
                    <td class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        单位</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox4" runat="server" DisableExpress="1" XDataBind="SFDATA:inv_in_detail.in_slnum_unit" BorderColor="#DCDCDC" width="100%"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td height="34" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        转换比例</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox8" runat="server" DisableExpress="1" XDataBind="SFDATA:inv_in_detail.sl_st_scale" BorderColor="#DCDCDC" width="100%"></aspxform:XTextBox>
                    </td>
                    <td class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        基准数量</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox14" runat="server" DisableExpress="1" XDataBind="SFDATA:inv_in_detail.in_stnum" BorderColor="#DCDCDC" width="100%" Express="SFDATA:inv_in_detail.in_slnum*SFDATA:inv_in_detail.sl_st_scale"></aspxform:XTextBox>
                    </td>
                    <td class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        基准单位</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox5" runat="server" DisableExpress="1" XDataBind="SFDATA:inv_in_detail.in_stnum_unit" BorderColor="#DCDCDC" width="100%"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td height="34" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        运货人</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox7" runat="server" DisableExpress="1" XDataBind="varstorename" BorderColor="#DCDCDC" width="100%"></aspxform:XTextBox>
                    </td>
                    <td class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        联系电话</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox15" runat="server" DisableExpress="1" XDataBind="varstoretel" BorderColor="#DCDCDC" width="100%"></aspxform:XTextBox>
                    </td>
                    <td class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        入库时间</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XDateTimePicker id="XDateTimePicker1" runat="server" XDataBind="SFDATA:inv_in_detail.create_time" BorderColor="#DCDCDC" DisplayOnly="True"></aspxform:XDateTimePicker>
                    </td>
                </tr>
                <tr>
                    <td height="34" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        仓库</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XDropDownList id="XDropDownList1" runat="server" XDataBind="SFDATA:inv_in_detail.depot_id" DisplayColumn="depot_name" ValueColumn="depot_id" XDataSource="DataSource:SFDATA;TableName:ctl_depot;Filter:state->varState,Company->SFDATA:inv_in_detail.Company" DataMap="depot_name->SFDATA:inv_in_detail.depot_name" PromptText="--请选择--"></aspxform:XDropDownList>
                    </td>
                    <td class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        库管员</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        <aspxform:XTextBox id="XTextBox6" runat="server" DisableExpress="1" XDataBind="SFDATA:inv_in_detail.CreateUserName" BorderColor="#DCDCDC" width="100%"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                    </td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                    </td>
                </tr>
                <tr>
                    <td height="84" class="xtbd" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none">
                        备注</td>
                    <td style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d1d1d1 1px solid; BORDER-LEFT: medium none" colspan="5">
                        <aspxform:XTextBox id="XTextBox1" runat="server" XDataBind="SFDATA:inv_in_detail.in_remarks" BorderColor="#DCDCDC" width="100%" TextMode="MultiLine" Rows="5"></aspxform:XTextBox>
                    </td>
                </tr>
            </tbody>
        </table>
        <br />
        <table width="450" align="center" border="0" cellspacing="0" cellpadding="0" hiddenexpress="1">
            <tbody>
                <tr>
                    <td width="150" height="34">
                        到货通知主键</td>
                    <td width="152">
                        <aspxform:XTextBox id="xtxtPurTaskId" runat="server" XDataBind="SFDATA:inv_in_detail.arrival_notice_id" BorderColor="#DCDCDC" width="100%" DataMap="vendor_id->SFDATA:inv_in_detail.vendor_id;vendor_name->SFDATA:inv_in_detail.vendor_name;mat_code->SFDATA:inv_in_detail.mat_code;mat_name->SFDATA:inv_in_detail.mat_name;mat_spesc->SFDATA:inv_in_detail.mat_spesc;arrival_slnum->SFDATA:inv_in_detail.plan_in_slnum;arrival_slnum_unit->SFDATA:inv_in_detail.in_slnum_unit;arrival_stnum_unit->SFDATA:inv_in_detail.in_stnum_unit;sl_st_scale->SFDATA:inv_in_detail.sl_st_scale;arrival_username->varstorename;arrival_usertel->varstoretel;if_tests->SFDATA:inv_in_detail.if_tests" ValueToDisplayText="DataSource:SFDATA;TableName:proc_arrival_notice;FilterColumn:arrival_notice_id;DisplayColumn:arrival_notice_id"></aspxform:XTextBox>
                    </td>
                    <td width="148">
                    </td>
                </tr>
                <tr>
                    <td height="34">
                        供应商id</td>
                    <td>
                        <aspxform:XTextBox id="XTextBox16" runat="server" XDataBind="SFDATA:inv_in_detail.vendor_id" BorderColor="#DCDCDC" width="100%"></aspxform:XTextBox>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td height="34">
                        仓库名称</td>
                    <td>
                        <aspxform:XTextBox id="XTextBox12" runat="server" XDataBind="SFDATA:inv_in_detail.depot_name" BorderColor="#DCDCDC" width="100%" BorderWidth="1"></aspxform:XTextBox>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td height="34">
                        获取化验单</td>
                    <td>
                        <aspxform:XDropDownList id="XDropDownList2" runat="server" XDataBind="vartestsid" DisplayColumn="tests_id" ValueColumn="tests_id" XDataSource="DataSource:SFDATA;TableName:proc_tests;Filter:fore_key_id->SFDATA:inv_in_detail.arrival_notice_id,tests_class->varTestsClass" DataMap="tests_result->vartestresult"></aspxform:XDropDownList>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td height="34">
                        入库化验</td>
                    <td>
                        <aspxform:XTextBox id="XTextBox17" runat="server" XDataBind="varTestsClass" BorderColor="#DCDCDC" width="100%" BorderWidth="1">入库化验</aspxform:XTextBox>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td height="34">
                        varState</td>
                    <td>
                        <aspxform:XTextBox id="XTextBox18" runat="server" XDataBind="varState" BorderColor="#DCDCDC" width="100%" BorderWidth="1">1</aspxform:XTextBox>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td height="34">
                        Company</td>
                    <td>
                        <aspxform:XTextBox id="XTextBox19" runat="server" XDataBind="SFDATA:inv_in_detail.Company" BorderColor="#DCDCDC" width="100%" BorderWidth="1"></aspxform:XTextBox>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td>
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator4" runat="server" DisableExpress="SFDATA:inv_in_detail.if_tests==0" Display="None" ForeColor="Red" ErrorMessage="化验结果不能为空" ControlToValidate="XDropDownList3">化验结果</aspxform:XRequiredFieldValidator>
                    </td>
                    <td>
                        不化验不验证</td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td height="34">
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator1" runat="server" Display="None" ForeColor="Red" ErrorMessage="入库数量不能为空" ControlToValidate="XTextBox13">入库数量必填</aspxform:XRequiredFieldValidator>
                    </td>
                    <td>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td height="34">
                        <aspxform:XCompareValidator id="XCompareValidator1" runat="server" Display="None" ForeColor="Red" ErrorMessage="入库数量不能超过到货数量" ControlToValidate="XTextBox13" ValueToCompareExpress="SFDATA:inv_in_detail.plan_in_slnum" Operator="LessThanEqual">入库数量限制</aspxform:XCompareValidator>
                    </td>
                    <td>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td height="34">
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator3" runat="server" Display="None" ForeColor="Red" ErrorMessage="基准数量不能为空" ControlToValidate="XTextBox14">基准数量</aspxform:XRequiredFieldValidator>
                    </td>
                    <td>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td height="34">
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator2" runat="server" Display="None" ForeColor="Red" ErrorMessage="请选择仓库" ControlToValidate="XDropDownList1">仓库</aspxform:XRequiredFieldValidator>
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
