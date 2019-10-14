/**
 * 定义消息处理构造方法
 */
function msg() {
    this.version = '2.0';
    this.shade = [0.02, '#000'];
    this.closeIndexs = {};
}
msg.prototype.verify=function(msg){
    this.close();
    return this.index = layer.msg(msg,{
        icon: 5,
        shade: this.shade||"",
        scrollbar: false,
        end: "",
        anim:6,
        time:  2 * 1000,
        shadeClose: true
    });
}
/**
 * 关闭消息框
 */
msg.prototype.close=function(){
    if (!this.closeIndexs['_' + this.index]) {
        this.closeIndexs['_' + this.index] = true;
        return layer.close(this.index);
    }
}
/**
 * 显示成功类型的消息
 * @param msg 消息内容
 * @param time 延迟关闭时间
 * @param callback 回调函数
 * @return {index}
 */
msg.prototype.success = function (msg, time, callback) {
    this.close();
    return this.index = layer.msg(msg,{
        icon: 1,
        shade: this.shade||"",
        scrollbar: false,
        end: callback,
        time: (time || 2) * 1000,
        shadeClose: true
    });
};
/**
 * 显示失败类型的消息
 * @param msg 消息内容
 * @param time 延迟关闭时间
 * @param callback 回调函数
 * @return {index}
 */
msg.prototype.error = function (msg, time, callback) {
    this.close();
    return this.index = layer.msg(msg,{
        icon: 2,
        shade: this.shade||"",
        scrollbar: false,
        end: callback,
        time: (time || 3) * 1000,
        shadeClose: true
    });
};
/**
 * 显示正在加载中的提示
 * @param msg 提示内容
 * @param callback 回调方法
 * @return {index}
 */
msg.prototype.loading = function (msg, callback) {
    this.close();
    return this.index = msg
        ? layer.msg(msg, {icon: 16, scrollbar: false, shade: this.shade, time: 0, end: callback})
        : layer.load(2, {time: 0, scrollbar: false, shade: this.shade, end: callback});
};
/**
 * 弹出警告消息框
 * @param msg 消息内容
 * @param callback 回调函数
 * @return {index}
 */
msg.prototype.alert = function (msg ,callback,title) {
    this.close();
    return this.index = layer.alert(msg, {title:title,end: callback, scrollbar: false, shadeClose: true});
};
/**
 * 确认对话框
 * @param msg 提示消息内容
 * @param ok 确认的回调函数
 * @param no 取消的回调函数
 * @return {index}
 */
msg.prototype.confirm = function (msg, ok, no) {
    this.close();
    var self = this;
    return this.index = layer.confirm(msg||'确定要操作这些数据吗？', {btn: ['确认', '取消'], shadeClose: true}, function () {
        typeof ok === 'function' && ok.call(this);
        self.close();
    }, function () {
        typeof no === 'function' && no.call(this);
        self.close();
    });
};
/**
 * 确认对话框回调操作
 * @param url 提交地址
 * @param field 要操作的类型
 * @param id 要操作的id
 * @param value 要操作的value
 * @param time 操作后提示的时间
 */
msg.prototype.confirmCallback=function(url,field,id,value){
    this.close();
    var msg='确定要操作这些数据吗？';
    this.confirm(msg,function(){
        if(value!=undefined&&value!=""){
            if (/[\[]\S+[\]]/.test(value)){
                value="{"+value.slice(1,-1)+"}";
                value=eval("("+value+")");
            }
        }
        $.post(url||window.location,{"field":field,'id':id,'value':value},function(data){
            //   data=data={"code":1,"msg":"登录账号不存在，请重新输入!","data":"","url":"","wait":2};
            $.msg.auto(data);
        })
    })
}
/**
 * 状态消息提示
 * @param msg 消息内容
 * @param time 显示时间s
 * @param callback 回调函数
 * @return {index}
 */
msg.prototype.tips = function (msg, time, callback) {
    this.close();
    return this.index = layer.msg(msg, {
        time: (time || 3) * 1000,
        shade: this.shade,
        end: callback,
        shadeClose: true
    });
};
/**
 * 自动处理显示Think返回的Json数据
 * @param data JSON数据对象
 * @return {index}
 */
msg.prototype.auto = function (data) {
    this.close();
    var self = this;
    if (parseInt(data.code) === 1) {
        return self.success(data.msg, data.wait||2, function () {
            !!data.url ? (top.location.href = data.url) : top.location.reload();
            if (self.autoSuccessCloseIndexs && self.autoSuccessCloseIndexs.length > 0) {
                for (var i in self.autoSuccessCloseIndexs) {
                    layer.close(self.autoSuccessCloseIndexs[i]);
                }
                self.autoSuccessCloseIndexs = [];
            }
            self.loading();
        });
    }
    self.error(data.msg, data.wait||3, function () {
        !!data.url && (top.location.href = data.url);
    });
};
/**
 * auto处理成功的自动关闭
 * @param index
 */
msg.prototype.addAutoSuccessCloseIndex = function (index) {
    this.autoSuccessCloseIndexs = this.autoSuccessCloseIndexs || [];
    this.autoSuccessCloseIndexs.push(index);
};
$.msg = new msg();
