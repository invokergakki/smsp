package com.syn.smsp.vo;

import org.apache.shiro.crypto.SecureRandomNumberGenerator;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

/**
 *
 */
public class TbUserVO implements Serializable
{
    private static final long serialVersionUID = 1L;

    /** 用户ID */
    private Long userId;

    /** 用户名称 */
    private String userName;

    /** 密码 */
    private String password;

    /** 手机号码 */
    private String mobile;

    /** 《userName-password 》MD5加密 */
    private String token;

    /** 创建时间 */
    private Date createTime;


    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
}
