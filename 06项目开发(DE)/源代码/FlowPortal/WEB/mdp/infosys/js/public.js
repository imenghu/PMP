//自定义tap
$(document).on("touchstart", function(e) {
    var $target = $(e.target);
    if(!$target.hasClass("disable")) $target.data("isMoved", 0);
});
$(document).on("touchmove", function(e) {
    var $target = $(e.target);
    if(!$target.hasClass("disable")) $target.data("isMoved", 1);
});
$(document).on("touchend", function(e) {
    var $target = $(e.target);
    if(!$target.hasClass("disable") && $target.data("isMoved") == 0) $target.trigger("tap");
});
//获取地址栏参数
function GetQueryString(name) {
	var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
	var r = window.location.search.substr(1).match(reg);
	if(r != null)
		return decodeURI(r[2]);
	return null;
}
//定义www变量
window.protocol=document.location.protocol;
window.host=window.location.host;
window.www=protocol+"//"+host;
//获取用户信息
function getLoginName(callback) {
    var str_data = "token=cosmosource-bpm-token";
    var s_url = "../mxe/permissions/server/user.aspx?command=get_info_bysession";
    $.ajax({
        type: "POST",
        url: s_url,
        async: false,
        success: function (data) {

			if(data=="会话过期,请重新登录!"){
				alert(data);
				location.href=www+'/mdp/login/login.html';
				return false;
			}
            var parser = new DOMParser();
            var xmlDoc = parser.parseFromString(data, "text/xml");
		    var login_Name = xmlDoc.getElementsByTagName('display_name')[0]['textContent'];
			 $(".longin_nane").html(login_Name)
			 if(callback){
				 callback(xmlDoc)
			 }
            //var countrys = xmlDoc.getElementsByTagName('userid');
            //var e_mail = xmlDoc.getElementsByTagName('e_mail');
            //var phone = xmlDoc.getElementsByTagName('phone');
            //userid = countrys[0]['textContent'];
            //e_mail = e_mail[0]['textContent'];
            //phone = phone[0]['textContent'];
        },
        error: function (data) {
            alert(data);//没有测试,不知道失败是什么情况
			location.href=www+'/mdp/login/login.html';
        }
    });
}
//退出
$('.other-nav .loginOut').click(function () {
	var url = "../mxe/login/server/login.aspx?command=logout" + "&t=" + Math.random();
	$.ajax({
		type: "get",
		url: url,
		success: function (xml) {
			if (xml == "")
				window.open('../login/login.html', '_self');
			else
				alert(xml)
		}
	})
})
//设置里面的查看用户和修改密码
function hasSet(login_uid){
	if($(".optionSet").length>0){
		$("body").append('<div class="Pop-up-box" id ="Pop-re-box">'+
		'<div class="Pop-up-box1" id = "Pop-re-box1" >'+
		'<p class="Pop-tip"><span></span></p>'+
		'<p class="Pop-close">'+
			'<a href="javascript:;"  class="set">设置</a>'+
			'<a href="javascript:;" onclick="$(\'.Pop-up-box\').hide();$(\'.Pop-up-box2\').hide()" class="close">关闭</a>'+
		'</p>'+
		'<div id="tUserInfo" class="fomrLogininfo">'+
			'<iframe id="" class="" marginwidth="0" marginheight="0" frameborder="0" scrolling="no" width="100%" src="'+www+'/rsm/permissions/infosys_userinfo.htm"></iframe>'+
			
		'</div>'+
		'</div>'+
		'<div class="Pop-up-box2" id = "Pop-re-box2">'+
			'<p class="Pop-tip"><span></span></p>'+
			'<p class="Pop-close">修改密码</p>'+
			'<div id="tUserInfo" class="fomrLogininfo">'+
				'<iframe id="" class="" marginwidth="0" marginheight="0" frameborder="0" scrolling="no" width="100%" src="'+www+'/rsm/permissions/support/infosys_user_password.htm?login_uid='+login_uid+'&isself=true&t=31216310"></iframe>'+
			'</div>'+
		'</div>'+
	'</div>')
	}
}
//显示设置的弹出框
$('.other-nav .optionSet').click(function(){
	$('.Pop-up-box').show();
})
