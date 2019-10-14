$(".main>ul>li>div>input").on("focus", function () {
    $(this).parent().addClass("active");
})
$(".main>ul>li>div>input").on("blur", function () {
    $(this).parent().removeClass("active");
})
$(".main>ul>li>div>input").keydown(function (event) {
    var keyCode = event.keyCode ? event.keyCode : event.which ? event.which : event.charCode; //解决浏览器之间的差异问题
    if (keyCode == 13) {
        $("input.submit").click();
    }
})

$("input.submit").on("click", function () {
    var uid = escape($("#uid").val());
    var pwd = $("#pwd").val();
    if (uid == "") {
        $.msg.auto({
            code: 2,
            msg: '用户名不能为空'
        })
        return false;
    }
    // 密码为空
    //if (pwd == "") {
    //    $.msg.auto({
    //        code: 2,
    //        msg: '密码不能为空'
    //    })
    //    return false;
    //}
    $.msg.loading('登录中,请等待...');

    $.ajax({
        url: 'Default.aspx',
        cache: false,
        data: {
            method: 'GetPublicKey',
            json: true
        },
        complete: function () {
        },
        error: function (response) {
            $.msg.error(response.responseText);
        },
        success: function (data) {
            var encrypt = new JSEncrypt();
            encrypt.setPublicKey(data.publicKey);

            $.ajax({
                url: 'Default.aspx',
                cache: false,
                data: {
                    method: 'Login',
                    json: true,
                    keystore: data.keystore,
                    uid: encrypt.encrypt(uid),
                    uep: encrypt.encrypt(pwd)
                },
                complete: function () {
                },
                error: function (response) {
                    $.msg.error(response.responseText);
                },
                success: function (data) {
                    if (data.success === false) {
                        $.msg.error(data.errorMessage);
                        return;
                    }
                    window.location.replace(application.returnUrl);
                },
                dataType: 'json'
            });
        },
        dataType: 'json'
    });
})