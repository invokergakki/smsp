package com.syn.smsp.vo;


/**
 * 平台短信发送设置
 *
 * @author huby
 * createDate  2019/8/26  14:05
 */
public class SMSSendVO extends BaseEntityVO {

    private Integer id;

    //API接口  发送平台账号
    private String  account;

    //API接口  发送平台密码
    private String  password;

    //API接口  短信平台发送请求Url
    private String  smsVariableRequestUrl;

    // 状态 0 停用  1 启用
    private Integer status;

    //API接口  模板ID
    private Integer  smsTemplateId;
    //API接口  模板名称
    private String  smsTemplateName;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getSmsVariableRequestUrl() {
        return smsVariableRequestUrl;
    }

    public void setSmsVariableRequestUrl(String smsVariableRequestUrl) {
        this.smsVariableRequestUrl = smsVariableRequestUrl;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Integer getSmsTemplateId() {
        return smsTemplateId;
    }

    public void setSmsTemplateId(Integer smsTemplateId) {
        this.smsTemplateId = smsTemplateId;
    }

    public String getSmsTemplateName() {
        return smsTemplateName;
    }

    public void setSmsTemplateName(String smsTemplateName) {
        this.smsTemplateName = smsTemplateName;
    }
}
