Ext.define('Develop.SysGrid.Preview.CodePanel2', {
    extend: 'Ext.panel.Panel',
    constructor: function (config) {
        var me = this, cfg;
        me.textarea = Ext.create('Ext.form.field.TextArea', {
            width: '100%',
            height: '100%',
            listeners: {
                afterrender: function (textarea) {

                    var textAreaElement = textarea.getEl().query('textarea')[0];
                    var editableCodeMirror = CodeMirror.fromTextArea(textAreaElement, {
                        mode: "htmlmixed",
                        theme: "default",
                        lineNumbers: true,
                        lineWrapping:true
                    });
                    Ext.Ajax.request({
                        url: YZSoft.$url(me, 'GetCode2.ashx?GridId=' + config.GridId),
                        method: 'POST',
                        waitMsg: {
                            msg: '正在生成...',
                            target: me
                        },
                        success: function (action) {
                            editableCodeMirror.getDoc().setValue(action.responseText);
                        },
                        failure: function (action) {
                            var mbox = Ext.Msg.show({
                                title: '错误提示',
                                msg: Ext.util.Format.text(action.responseText),
                                buttons: Ext.Msg.OK,
                                icon: Ext.MessageBox.WARNING
                            });
                        }
                    });
                }
            }
        })
        cfg = {
            scrollable:'y',
            items: [me.textarea]
        };
        Ext.apply(cfg, config);
        me.callParent([cfg]);
        me.on({
            scope: me,
            afterrender: function () {
                me.textarea.setHeight(me.getHeight());
            },
            change: function () {
                me.textarea.setHeight(me.getHeight());
            }
        });
    }
});