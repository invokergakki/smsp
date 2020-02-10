package com.syn.smsp.vo;

import java.util.Date;

/**
 * 发送短信
 *
 * @author huby
 * createDate  2019/8/23  16:18
 */
public class SendMessageVO {
    // 发送短信id
    private Integer id;
    // 模块信息
    private String module;
    // 平台API账号
    private String account;
    // 平台API密码
    private String password;
    // 短信模板
    private String msg;
    // 短信变量参数
    private String params;
    // 发送短信平台地址
    private String requestUrl;
    // 是否需要返回状态报告（默认false）
    private String reportStatus;
    // 发送短信返回响应id
    private String msgId;
    // 发送短信返回响应时间
    private String responseTime;
    // 发送短信返回响应状态
    private String status;
    // 发送短信返回响应信息
    private String responseMsg;
    // 发送短信返回响应失败个数
    private Integer failNum;
    // 发送短信返回响应成功的个数
    private Integer successNum;
    /** 发送短信账户*/
    private String createBy;
    /** 发送短信时间*/
    private Date createTime;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getModule() {
        return module;
    }

    public void setModule(String module) {
        this.module = module;
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

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public String getParams() {
        return params;
    }

    public void setParams(String params) {
        this.params = params;
    }

    public String getRequestUrl() {
        return requestUrl;
    }

    public void setRequestUrl(String requestUrl) {
        this.requestUrl = requestUrl;
    }

    public String getReportStatus() {
        return reportStatus;
    }

    public void setReportStatus(String reportStatus) {
        this.reportStatus = reportStatus;
    }

    public String getMsgId() {
        return msgId;
    }

    public void setMsgId(String msgId) {
        this.msgId = msgId;
    }

    public String getResponseTime() {
        return responseTime;
    }

    public void setResponseTime(String responseTime) {
        this.responseTime = responseTime;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getResponseMsg() {
        return responseMsg;
    }

    public void setResponseMsg(String responseMsg) {
        this.responseMsg = responseMsg;
    }

    public Integer getFailNum() {
        return failNum;
    }

    public void setFailNum(Integer failNum) {
        this.failNum = failNum;
    }

    public Integer getSuccessNum() {
        return successNum;
    }

    public void setSuccessNum(Integer successNum) {
        this.successNum = successNum;
    }

    public String getCreateBy() {
        return createBy;
    }

    public void setCreateBy(String createBy) {
        this.createBy = createBy;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
}
