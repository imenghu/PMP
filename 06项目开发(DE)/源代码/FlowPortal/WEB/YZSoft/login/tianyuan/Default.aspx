<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="YZSoft_Login_2020_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head runat="server">
    <title></title>
    <link rel="shortcut icon" type="image/ico" href="../../../favicon.ico" />
    <link href="css/login2.css" rel="stylesheet" />
    <script type="text/javascript">
        (function (doc, win) {
            var docEl = doc.documentElement,
                resizeEvt = 'orientationchange' in window ? 'orientationchange' : 'resize',
                recalc = function () {
                    var clientWidth = docEl.clientWidth;
                    if (!clientWidth) return;
                    docEl.style.fontSize = 100 * (clientWidth / 1920) + 'px';//640的设计图
                };
            if (!doc.addEventListener) return;
            win.addEventListener(resizeEvt, recalc, false);
            doc.addEventListener('DOMContentLoaded', recalc, false);
        })(document, window);
    </script>
    <!--[if IE 6]>
    <script type="text/javascript" src="js/ie_png.js"></script>
    <script type="text/javascript">
        ie_png.fix('div, img');  //EvPNG.fix('包含透明PNG图片的标签'); 多个标签之间用英文逗号隔开。
    </script>
    <![endif]-->
    <%--<link rel="stylesheet" href="css/layer.css" />--%>
    <style>
        @font-face {
            font-family: uc-nexus-iconfont;
            src: url(chrome-extension://pogijhnlcfmcppgimcaccdkmbedjkmhi/res/font_9qmmi8b8jsxxbt9.woff) format('woff'),url(chrome-extension://pogijhnlcfmcppgimcaccdkmbedjkmhi/res/font_9qmmi8b8jsxxbt9.ttf) format('truetype');
        }
    </style>
    <style>
        .layui-layer-btn0 {
            width:60px;
            height:28px;
            font-size:12px;
            text-align:center;
        }
    </style>
</head>
<body>
<div class="wrapper">
        <div class="welcome-login">
            <!-- <p>你好，欢迎登录</p>-->
            <img src="css/ui/welcome-text.png" alt="" />
        </div>
        <div class="title">
            <p>天源集团数字化管理平台</p>
        </div>
        <div class="wrapper-content">
            <%--<div class="rt-img-box">
                <img src="css/ui/bg-center-rt.png" alt="">
            </div>--%>
            <div class="main-box">
                <div class="main">
                    <!--<p class="title">天源集团数字化管理平台</p>-->
                    <ul>
                        <li>
                            <div class="">
                                <b><i class="icon-username"></i></b>
                                <input type="text" name="uid" id="uid" placeholder="请输入用户名" autofocus="" />
                            </div>
                        </li>
                        <li>
                            <div>
                                <b><i class="icon-password"></i></b>
                                <input type="password" name="pwd" id="pwd" placeholder="请输入密码" />
                            </div>
                        </li>
                        <li>
                            <div class="submit">
                                <input type="submit" value="登录" class="submit" />
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="footer">
        <b>
            <img src="css/ui/logo-new.svg" alt="">
            <%=CompanyInfoCompanyName%>版权所有
        </b>
    </div>
    <script src="js/jquery-1.11.3.min.js" type="text/javascript"></script>
    <script src="js/layer.js" type="text/javascript"></script>
    <script src="js/plugs.js" type="text/javascript"></script>
    <script src="js/jsencrypt.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        function htmlDecode(value) {
            if (value) {
                return $('<div />').html(value).text();
            } else {
                return '';
            }
        }
        application = {
                root: '<%=this.ResolveUrl("~/")%>',
                returnUrl: htmlDecode('<%=HttpUtility.HtmlEncode(YZUtility.EncodeJsString(this.ReturnUrl))%>')
        }
        //升级说明弹窗------------------------
        layer.ready(function () {
            layer.open({
                type: 1,
                title: '数字化管理平台升级说明',
                maxmin: false,
                area: ['598px', '400px'],
                btn: ["关闭"],
                closeBtn: 0,
                content: '<div style="font-size:20px;background:url(layer/bak.png) no-repeat;width:100%;height:100%"><div style="position: absolute;top:30px;left:265px">通知</div><div style="position: absolute;top:90px;"><span style="padding:10px">1、系统于10月26日进行了升级改版，后续还会有新功能逐步开放。本次升级主要变化，请<a href="layer/升级说明.pdf" target="_blank">查看</a>升级说明</span><br><span style="padding:10px">2、为防范网络安全的隐患，密码体系同步升级，请尽快加强密码（6位以上，包含数字、字符和字母）。默认密码为：123456</span><div style="position: absolute;bottom:-60px;left:400px">数字化管理平台</div></div></div>',
                yes: function (index, layero) {
                    if (wait == 0) {
                        layer.close(index);
                        clearTimeout(timer);
                    } else {
                        layer.msg(wait + 's后可关闭');
                    }
                }
            });

        });

        var wait =3;
        function time() {
            if (wait == 0) {
                wait = 0;
            } else {
                wait--;
            }
        }

        var timer = setInterval(time, 1000);

        //-----------------------------------------
    </script>
    <script src="js/login.js" type="text/javascript"></script>
</body>
</html>
