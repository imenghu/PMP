$(".iframe-header>li").on("click", function () {
    var index = $(this).index();
    $(this).addClass("active").siblings().removeClass("active");
    $(".iframe-content>li").eq(index).addClass("active").siblings().removeClass("active")

})
$(".headert-nav > div > .other-nav > li").mouseover(function () {
    $(this).addClass("on").children("a").children("span").addClass("on");
    var index = parseInt($(this).index() + 1);
    var index1 = parseInt($(this).index());
    $(this).children("a").children("img").attr("src","mdp/infosys/images/nav" + index +"-on.svg");
     var li_list = [
        {
            "src":"http://www.tyswjt.cn",
            "name":"天源水务集团官网1"
        },{
            "src":"",
            "name":""
        },{
            "src":"",
            "name":"菜单3的3"
        }
    ];
    var li_list2 = {
        0:[
            {
            "src":"http://www.tyswjt.cn",
            "name":"天源水务集团官网"
            },{
                "src":"http://119.187.117.206:9999/seeyon/index.jsp",
                "name":"OA办公系统"
            }
        ],
        1:[
            {
                "src": "mdp/infosys/file/天源集团数字化管理平台-系统使用手册V1.1.pdf",
                "name":"系统使用手册"
            },
			 {
                "src":"javascript:;",
                "name":"系统运维手册"
            },
			 {
			     "src": "mdp/infosys/file/水发天源集团物料编码方案.pdf",
                "name":"物料编码方案"
            }
			
        ],
        2:[
            {
                "src": "mdp/infosys/tools/ChromeSetup.rar",
                "name":"chrome浏览器"
            }
        ],
        3:[
            {
                "src":"javascript:;",
                "name":"系统使用常见问题"
            }
        ],
        4:[
            {
                "src":"javascript:;",
                "name":"M:13333333333"
            }, {
                "src":"javascript:;",
                "name":"E:123@163.com"
            }
        ]
    };
    var html = "";
    $(".sub-menu").html("");
    for (var i = 0;i<li_list2[$(this).index()].length;i++){
        html += "<li><a href='"+ li_list2[$(this).index()][i].src +"'target='_blank' >"+ li_list2[$(this).index()][i].name +"</a></li>"
    }
    $(".sub-menu").append(html).attr("value",$(this).index());
    $(this).parent("ul.other-nav").children("ul.sub-menu").addClass("on");
}).mouseout(function () {
    $(this).removeClass("on").children("a").children("span").removeClass("on");
    var index = parseInt($(this).index() + 1);
    $(this).children("a").children("img").attr("src","mdp/infosys/images/nav" + index +".svg");
    $(this).parent("ul.other-nav").children("ul.sub-menu").removeClass("on");
});
$(".sub-menu").mouseover(function(){
	var val=$(this).attr("value");
	$(".headert-nav > div > .other-nav > li").eq(val).children("a").children("img").attr("src","mdp/infosys/images/nav" + (val-0+1) +"-on.svg");
	$(".headert-nav > div > .other-nav > li").eq(val).addClass("on").children("a").children("span").addClass("on");
}).mouseout(function(){
	var val=$(this).attr("value");
	$(".headert-nav > div > .other-nav > li").eq(val).children("a").children("img").attr("src","mdp/infosys/images/nav" + (val-0+1) +".svg");
	$(".headert-nav > div > .other-nav > li").eq(val).removeClass("on").children("a").children("span").removeClass("on")
})
function getLoginName(){
    var str_data = "token=cosmosource-bpm-token";
    var s_url = "../mxe/permissions/server/user.aspx?command=get_info_bysession";
    $.ajax({
        type: "POST",
        url: s_url,
        //dataType:"XML",
        //data: {
        //"params": str_data
        //},
        async: false,
        success: function(data) {
            var parser=new DOMParser();
            var xmlDoc=parser.parseFromString(data,"text/xml");

            var countrys = xmlDoc.getElementsByTagName('userid');
            var login_Name =xmlDoc.getElementsByTagName('display_name');
            var e_mail =xmlDoc.getElementsByTagName('e_mail');
            var phone =xmlDoc.getElementsByTagName('phone');
            var userid = countrys[0]['textContent'];
            loginName =login_Name[0]['textContent'];
            e_mail=e_mail[0]['textContent'];
            phone =phone[0]['textContent'];
			$(".header .text.user").html(loginName)
			getMessage(userid)
        },
        error: function(data) {
            alert(data);
        }
    });
};
function getMessage(userid){
	 var sql1 = "SELECT a.menu_oauth_id,a.org_id,a.role_id,c.userid,b.menu_id,b.menu_name,b.hig" +
        "h_menu_id,b.menu_url,b.if_last_menu FROM sys_mess_menu_oauth a LEFT JOIN " +
        "sys_mess_menu b ON a.menu_id = b.menu_id LEFT JOIN (SELECT " +
        "o.userid,p.role_id,q.org_id FROM mxwi.users o LEFT JOIN " +
        "mxwi.user_role_map p ON o.userid=p.person_id LEFT JOIN mxwi.org q " +
        "ON q.org_id=o.org_id)c ON c.role_id=a.role_id  " +
        "WHERE c.userid=";
    sql1 += "\'" + userid + "\'" + " and a.state='1' GROUP BY b.menu_id order by b.order_num asc";
	sql1 = escape(encodeURIComponent(sql1));	
	var surl = "./../Add_Ons/MxwFPD/Server/DataJson.aspx?conn=info_sys_mysql&sql=" + sql1 + "&dtype=json";
    $.ajax({
        type: "post",
        url: surl,
        dataType: "text",
        success: function (jsnData) {
            var setdata = eval("(" + jsnData + ")");
			for(var i=0,lis='';i<setdata.length;i++){
				if(i==0){
					lis+='<li class="active" onclick="getMsg(this)" data="'+setdata[i].menu_url+'">'+setdata[i].menu_name+'</li>';
				}else{
					lis+='<li class="" onclick="getMsg(this)" data="'+setdata[i].menu_url+'">'+setdata[i].menu_name+'</li>';
				}
				
			}
			$("body").append('<div class="Pop-up-box" id="message_box">'+
				'<div class="Pop-up-box1" id = "Pop-re-box1" style="width:1200px;height:620px;">'+
				'<p class="Pop-tip"><span></span></p>'+
				'<p class="Pop-close">'+
					'<a href="javascript:;"  class="set">待办事项</a>'+
					'<a href="javascript:;" onclick="$(\'.Pop-up-box\').hide();$(\'.Pop-up-box2\').hide()" class="close">╳</a>'+
				'</p>'+
				'<ul class="message_type">'+
					lis+
				'</ul>'+
				'<div id="tUserInfo" class="fomrLogininfo">'+
					'<iframe id="iframe_msg" class="" marginwidth="0" marginheight="0" frameborder="0" scrolling="no" width="100%" src="'+setdata[0].menu_url+'"></iframe>'+
					
				'</div>'+
				'</div>'+
			'</div>')
			
		}
	})
	
	gettasknum(userid);
}
function getMsg(_this){
	$(_this).addClass("active").siblings().removeClass("active");
	$("#iframe_msg").attr("src",$(_this).attr("data"));
}
function getOnlineNum(){
	console.log('1');
	$.ajax({
        type: "get",
        //url: www+'/permsvr/http?type=getOnlineUser',
		url: www+'/permsvr/public?type=onlineUser',
        dataType: "xml",
        success: function (data) {
			//console.log("####");
			//console.log(data);
			
			var cp=$(data).find("perm").children();
			//var cp=$(data).find("perm").children();
			var arr = cp['prevObject'];
			//console.log(cp['prevObject'][0].textContent);
			var list = [];
			for(var i=0;i<arr.length;i++){
				var val = arr[i].textContent;
				if(val === '[mdp]'){
					list.push(arr[i]);
				}
			}
			//console.log(list);
			var len = list.length;
			$("#onlineNum").html(len);
			//var len;
			//len = unique1(arr);
			//console.log(len.length);
			
			//var numArr=uniq(data.data,'login_id')
			//$("#onlineNum").html(numArr.length)
		}
	})
}

//获取在线人名称
function getOnlineName(){
	console.log('2');
	$.ajax({
        type: "get",
        //url: www+'/permsvr/http?type=getOnlineUser',
		url: www+'/permsvr/public?type=onlineUser',
        dataType: "xml",
        success: function (data) {
			//console.log("####");
			//console.log(data);
			
			var cp=data[0];
			var namelist = [];
			var tab = data.getElementsByTagName("Table");
			for(var i=0;i<tab.length;i++){
				var perm = tab[i]['childNodes'][3]['textContent'];
				if(perm === '[mdp]'){
					var name = tab[i]['childNodes'][1]['textContent'];
					namelist.push(name);
				}
			}
			//console.log(namelist);
			//console.log(tab[0]['childNodes'][3]['textContent']);
			//console.log(tab[0]['childNodes'][1]['textContent']);
			var html = "";
			for(var i=0;i<namelist.length;i++){
				var str = "<li> [ " + namelist[i] + " ] </li>";
				html += str;
			}
			
			//console.log(html);
			$('#showname').append(html);
			
		}
	})
}

//获取消息中的任务数
function gettasknum(userid){
	 var sqlnum = "select sum(num) num from (" +
	 "SELECT  '需求审批' classname,COUNT(*) num FROM proc_demand a,(SELECT t1.execution_id_ FROM mxwi.jbpm4_task t1,mxwi.bpm_def t2 ,mxwi.bpm_owner t3 WHERE assignee_=CONCAT('u_',"+ userid +") AND t2.bpm_key = SUBSTR(t1.execution_id_,1,14) AND t1.execution_id_=t3.piid ORDER BY create_ DESC) g WHERE g.execution_id_ = a.piid " + 
	 " UNION ALL " +
	 "SELECT  '合同审批' classname,COUNT(*) num FROM proc_contract a,(SELECT t1.execution_id_,t1.name_ FROM mxwi.jbpm4_task t1,mxwi.bpm_def t2 ,mxwi.bpm_owner t3 WHERE assignee_=CONCAT('u_',"+ userid +") AND t2.bpm_key = SUBSTR(t1.execution_id_,1,14) AND t1.execution_id_=t3.piid ORDER BY create_ DESC) g WHERE g.execution_id_ = a.piid " +
	 " UNION ALL " +
	 "SELECT  '销售审批' classname,COUNT(*) num FROM sal_order_master a,(SELECT t1.execution_id_ FROM mxwi.jbpm4_task t1,mxwi.bpm_def t2 ,mxwi.bpm_owner t3 WHERE assignee_=CONCAT('u_',"+ userid +") AND t2.bpm_key = SUBSTR(t1.execution_id_,1,14) AND t1.execution_id_=t3.piid ORDER BY create_ DESC) g WHERE g.execution_id_ = a.piid " +
	 ")t1"
	 ;
	 //console.log(sqlnum);
	 //" UNION ALL " +
	 //"SELECT  '销售审批' classname,COUNT(*) num FROM sal_order_master a,(SELECT t1.execution_id_ FROM mxwi.jbpm4_task t1,mxwi.bpm_def t2 ,mxwi.bpm_owner t3 WHERE assignee_=CONCAT('u_',"+ userid +") AND t2.bpm_key = SUBSTR(t1.execution_id_,1,14) AND t1.execution_id_=t3.piid ORDER BY create_ DESC) g WHERE g.execution_id_ = a.piid " 
	 //" UNION ALL " +
	 //"SELECT  '退库审批' classname,COUNT(*) num FROM inv_matrefund a,(SELECT t1.execution_id_ FROM mxwi.jbpm4_task t1,mxwi.bpm_def t2 ,mxwi.bpm_owner t3 WHERE assignee_=CONCAT('u_',"+ userid +") AND t2.bpm_key = SUBSTR(t1.execution_id_,1,14) AND t1.execution_id_=t3.piid ORDER BY create_ DESC) g WHERE g.execution_id_ = a.piid " 
	 
	 
	 var sqlnum1 = "select sum(num) num from (" +
	 "SELECT  '出库审批' classname,COUNT(*) num FROM inv_out_master a,(SELECT t1.execution_id_ FROM mxwi.jbpm4_task t1,mxwi.bpm_def t2 ,mxwi.bpm_owner t3 WHERE assignee_=CONCAT('u_',"+ userid +") AND t2.bpm_key = SUBSTR(t1.execution_id_,1,14) AND t1.execution_id_=t3.piid ORDER BY create_ DESC) g WHERE g.execution_id_ = a.piid " + 
	 " UNION ALL " +
	 "SELECT  '退库审批' classname,COUNT(*) num FROM inv_matrefund a,(SELECT t1.execution_id_ FROM mxwi.jbpm4_task t1,mxwi.bpm_def t2 ,mxwi.bpm_owner t3 WHERE assignee_=CONCAT('u_',"+ userid +") AND t2.bpm_key = SUBSTR(t1.execution_id_,1,14) AND t1.execution_id_=t3.piid ORDER BY create_ DESC) g WHERE g.execution_id_ = a.piid " +
	 " UNION ALL " +
	 "SELECT  '盘存审批' classname,COUNT(*) num FROM inv_inventory_master a,(SELECT t1.execution_id_ FROM mxwi.jbpm4_task t1,mxwi.bpm_def t2 ,mxwi.bpm_owner t3 WHERE assignee_=CONCAT('u_',"+ userid +") AND t2.bpm_key = SUBSTR(t1.execution_id_,1,14) AND t1.execution_id_=t3.piid ORDER BY create_ DESC) g WHERE g.execution_id_ = a.piid " +
	 ")t1"
	 ;
	 
	 var sqlnum2 = "SELECT COUNT(DISTINCT e.pur_task_id) num FROM proc_demand_detail c LEFT JOIN proc_pur_task e ON c.demand_detail_id=e.demand_detail_id LEFT JOIN mxwi.org a ON c.org_id = a.org_id , mxwi.users f " +
     "WHERE c.state='1' AND e.state='1'  AND a.org_id = f.org_id AND e.org_id=f.org_id AND e.task_state='0' AND f.userid =" + userid;
	 
	 var sqlnum3 = "SELECT COUNT(e.pur_task_id ) num FROM proc_demand_detail c LEFT JOIN proc_pur_task e ON c.demand_detail_id = e.demand_detail_id LEFT JOIN mxwi.org a ON c.org_id = a.org_id WHERE c.state='1' " +
	 "AND e.state='1' AND e.pur_task_userid = " + userid;
	 
	 var sqlorg = "SELECT org_id FROM mxwi.`users`  WHERE userid =" + userid;
	 
	 
	 
	 
	 
	 
	 sqlnum = escape(encodeURIComponent(sqlnum));
	 sqlnum1 = escape(encodeURIComponent(sqlnum1));	
	 sqlnum2 = escape(encodeURIComponent(sqlnum2));
	 sqlnum3 = escape(encodeURIComponent(sqlnum3));
     sqlorg =  escape(encodeURIComponent(sqlorg));
	 
	 var surl = "./../Add_Ons/MxwFPD/Server/DataJson.aspx?conn=info_sys_mysql&sql="+ sqlnum +"&dtype=json";
	 var surl1 = "./../Add_Ons/MxwFPD/Server/DataJson.aspx?conn=info_sys_mysql&sql="+ sqlnum1 +"&dtype=json";
	 var surl2 = "./../Add_Ons/MxwFPD/Server/DataJson.aspx?conn=info_sys_mysql&sql="+ sqlnum2 +"&dtype=json";
	 var surl3 = "./../Add_Ons/MxwFPD/Server/DataJson.aspx?conn=info_sys_mysql&sql="+ sqlnum3 +"&dtype=json";
	 var surlorg = "./../Add_Ons/MxwFPD/Server/DataJson.aspx?conn=info_sys_mysql&sql="+ sqlorg +"&dtype=json";
	 //console.log(surl);
     
	 getnum(surl);
	 getnum(surl1);
	 getnum(surl2);
	 getorgnum(surlorg,surl2,surl3);
	 
	 
	
}

//获取查询的数
function getnum(url){
	$.ajax({
        type: "post",
        url: url,
        dataType: "text",
        success: function (jsnData) {
            var setdata = eval("(" + jsnData + ")");
			console.log("####");
			console.log(setdata[0]['num']);
			var num = setdata[0]['num'];
			if(num > 0){
				//$('#message').src = "mdp/infosys/images/message1.png";
				var img1=document.getElementById("message");
				img1.src="mdp/infosys/images/message1.svg";
			}
		}
	 });
}

function getorgnum(url,url2,url3){
	$.ajax({
        type: "post",
        url: url,
        dataType: "text",
        success: function (jsnData) {
            var setdata = eval("(" + jsnData + ")");
			//console.log("####");
			//console.log(setdata[0]['num']);
			var org = setdata[0]['org_id'];
			//console.log(org);
			if(org == '9'){
				getnum(url2);
			}else if(org == '12'){
				console.log('2');
				getnum(url3);
			}
		}
	 });
}


// 数组去重
function uniq(array,key){
    var temp = [];
    for(var i = 0; i < array.length; i++){
		if(key){
			if(temp.indexOf(array[i][key]) == -1){
				temp.push(array[i][key]);
			}
		}else{
			if(temp.indexOf(array[i]) == -1){
				temp.push(array[i]);
			}
		}
        
    }
    return temp;
}
$().ready(function(){
	//getLoginName();
	//getOnlineNum();
	//getOnlineName();
	$(function(){
		$('#spanmouse').mouseover(function(){
			$('#showname').css('display','block');
			$('#spanmouse').css('background-color','#F5F6FA');
		});
		$('#spanmouse').mouseleave(function(){
			$('#showname').css('display','none');
			$('#spanmouse').css('background-color','#FFF');
		});
	});
})