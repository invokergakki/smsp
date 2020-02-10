package com.syn.smsp.vo;

/**
 * 短信发送模板
 *
 * @author huby
 * createDate  2019/8/26  14:06
 */
public class SMSTemplateVO  extends BaseEntityVO {

    private Integer id;

    //短信接收手机号
    private String  mobile;

    //发送模块
    private String  module;

    //短信发送模板
    private String  templateMsg;

    //短信发送变量
    private String  variable;

    // 状态 0 停用  1 启用
    private Integer status;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getModule() {
        return module;
    }

    public void setModule(String module) {
        this.module = module;
    }

    public String getTemplateMsg() {
        return templateMsg;
    }

    public void setTemplateMsg(String templateMsg) {
        this.templateMsg = templateMsg;
    }

    public String getVariable() {
        return variable;
    }

    public void setVariable(String variable) {
        this.variable = variable;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }
}
