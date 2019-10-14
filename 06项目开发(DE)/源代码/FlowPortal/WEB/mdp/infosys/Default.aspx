<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="mdp_infosys_Default" %>


<!DOCTYPE html>
<html>
<head lang="Zh-cn">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-COMPATIBLE" content="IE=edge,chrome=1" />
    <meta content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=no" name="viewport" />
    <meta name="format-detection" content="telephone=no" />
    <meta name="format-detection" content="email=no">
    <title>天源集团数字化管理平台--门户</title>
    <meta name="keywords" content="">
    <meta name="Description" content="">
    <script>
        (function (doc, win) {
            var docEl = doc.documentElement,
                resizeEvt = 'orientationchange' in window ? 'orientationchange' : 'resize',
                recalc = function () {
                    var clientWidth = docEl.clientWidth;
                    if (!clientWidth) return;
                    docEl.style.fontSize = 100 * (clientWidth / 1920) + 'px';
                };
            if (!doc.addEventListener) return;
            win.addEventListener(resizeEvt, recalc, false);
            doc.addEventListener('DOMContentLoaded', recalc, false);
        })(document, window);
    </script>
    <link rel="stylesheet" href="mdp/infosys/css/style.css" />
    <link rel="stylesheet" href="mdp/infosys/css/public.css" />
    <link rel="stylesheet" href="mdp/infosys/css/index.css" />
</head>
<body>
    <!--头部-->
    <div class="header-wrapper">
        <div class="header">
            <a href="javascript:;" class="logo">
                <img src="mdp/infosys/images/logo.png" alt="天源集团数字化管理平台">
            </a>
            <div class="headert-nav">
                <div>
                    <ul class="other-nav">
                        <li>
                            <a href="javascript:;">
                                <img src="mdp/infosys/images/nav1.svg" alt="常用链接">
                                <span>常用链接</span>
                            </a>
                        </li>
                        <li>
                            <a href="javascript:;">
                                <img src="mdp/infosys/images/nav2.svg" alt="知识库">
                                <span>知识库</span>
                            </a>
                        </li>
                        <li>
                            <a href="javascript:;">
                                <img src="mdp/infosys/images/nav3.svg" alt="下载工具">
                                <span>下载工具</span>
                            </a>
                        </li>
                        <li>
                            <a href="javascript:;">
                                <img src="mdp/infosys/images/nav4.svg" alt="常见问题">
                                <span>常见问题</span>
                            </a>
                        </li>
                        <li>
                            <a href="javascript:;">
                                <img src="mdp/infosys/images/nav5.svg" alt="联系我们">
                                <span>联系我们</span>
                            </a>
                        </li>
                        <ul class="sub-menu"></ul>
                    </ul>
                    <div class="search-wrapper">
                        <div class="search-box">
                            <input type="text" placeholder="天源知识库">
                        </div>
                        <button></button>
                    </div>
                </div>
                <ul class="user-nav">
                    <li>
                        <a href="javascript:;" style="cursor:default;">
                            <img src="mdp/infosys/images/user.png" alt="用户">
                            <span class="text user"><%=this.DisplayName%></span>
                            <!--<i></i>-->
                        </a>
                    </li>
                    <%--<li>
                        <a href="javascript:;" onclick="$('#message_box').show()" title="消息">
                            <img id="message" src="mdp/infosys/images/message.png" alt="消息">
                        </a>
                    </li>--%>
                    <%--<li style="position:relative;">
                        <a href="javascript:;" id="mouse">
                            <span id="spanmouse" style="width:60;height:25px;" class="text">在线人数:<i id="onlineNum">1</i></span>
                            <div id="showname" style="width: 110px;background-color: #F5F6FA;font-size:12px;color:#29415a; display:none; font-size:0.12rem;text-align:center;position:absolute;right:-25px;">

                            </div>
                        </a>
                    </li>--%>
                </ul>
            </div>
        </div>
    </div>
    <!--主体-->
    <div class="content">
        <div class="main">
            <img class="main-title" src="mdp/infosys/images/main1.png" alt="数字天源">
            <div class="iframe-wrapper">
                <ul class="iframe-header">

                    <li class="active">资产<span>125</span>亿 <b></b></li>
                    <li>收入<span>11.7</span>亿 <b></b></li>
                    <li>利润<span>8925</span>万 <b></b></li>
                    <li>员工<span>1780</span>人 <b></b></li>
                    <li>企业<span>78</span>家 <b></b></li>
                    <li>绩效<span>20</span>名<b></b></li>
                    <li class="more"><a href='Default.aspx?StartApp=2020/SFBI' target='_self' onclick="event.stopPropagation();">更多<span><img src="mdp/infosys/images/more.svg" alt=""></span></a><b></b></li>
                </ul>
                <ul class="iframe-content">
                    <li class="active">
                        <iframe src="http://218.201.160.42:8088/fwp/brower.html?objpath=/project/reports/infosys/platform/portal/tab1/asset_changes.fwp"></iframe>
                    </li>
                    <li>
                        <iframe src="http://218.201.160.42:8088/fwp/brower.html?objpath=/project/reports/infosys/platform/portal/tab2/Income_change.fwp"></iframe>
                    </li>
                    <li>
                        <iframe src="http://218.201.160.42:8088/fwp/brower.html?objpath=/project/reports/infosys/platform/portal/tab3/profit.fwp"></iframe>
                    </li>
                    <li>
                        <iframe src="http://218.201.160.42:8088/fwp/brower.html?objpath=/project/reports/infosys/platform/portal/tab4/tab4.fwp"></iframe>
                    </li>
                    <li>
                        <iframe src="http://218.201.160.42:8088/fwp/brower.html?objpath=/project/reports/infosys/platform/portal/tab5/map1.fwp"></iframe>
                    </li>
                    <li>
                        <iframe src="http://218.201.160.42:8088/fwp/brower.html?objpath=/project/reports/infosys/platform/portal/tab6/tab6.fwp"></iframe>
                    </li>
                </ul>
            </div>
        </div>
        <div class="main">
            <img class="main-title" src="mdp/infosys/images/main2.png" alt="应用模块">
            <ul class="use-wrapper">
                <li class="use1">
                    <a href="Default.aspx?StartApp=2020/SF" target="_self">
                        <b></b>
                        <span>采购管理</span>
                    </a>
                </li>
                <li class="use2">
                    <a href="Default.aspx?StartApp=2020/SF" target='_self'>
                        <b></b>
                        <span>销售管理</span>
                    </a>
                </li>
                <li class="use3">
                    <a href="Default.aspx?StartApp=2020/SF" target='_self'>
                        <b></b>
                        <span>生产管理</span>
                    </a>
                </li>
                <li class="use4">
                    <a href="javascript:;">
                        <b></b>
                        <span>财务管理</span>
                    </a>
                </li>
                <li class="use5">
                    <a href="javascript:;">
                        <b></b>
                        <span>资产管理</span>
                    </a>
                </li>
                <li class="use6">
                    <a href="javascript:;">
                        <b></b>
                        <span>绩效管理</span>
                    </a>
                </li>
                <li class="use7">
                    <a href="javascript:;">
                        <b></b>
                        <span>党建管理</span>
                    </a>
                </li>
                <li class="use8">
                    <a href="javascript:;">
                        <b></b>
                        <span>行政管理</span>
                    </a>
                </li>
                <li class="use8">
                    <a href="javascript:;">
                        <b></b>
                        <span>人力资源管理</span>
                    </a>
                </li>
                <li class="use10">
                    <a href="javascript:;">
                        <b></b>
                        <span>工程管理</span>
                    </a>
                </li>
            </ul>
        </div>
    </div>
    <!--<div class="jsc">-->
    <!--    <a href="./home.html">-->
    <!--        <b>-->
    <!--            <img src="images/jsc.svg" alt="">-->
    <!--            <span>驾驶舱</span>-->
    <!--        </b>-->
    <!--    </a>-->
    <!--</div>-->
    <iframe style="display:none" src='../../fwp/brower.html?objpath=/project/reports/infosys/platform/take_bpm.fwp'></iframe>
    <script src="mdp/infosys/lib/jquery/jquery.js"></script>
    <script src="mdp/infosys/js/public.js"></script>
    <script src="mdp/infosys/js/index.js"></script>
</body>
</html>

