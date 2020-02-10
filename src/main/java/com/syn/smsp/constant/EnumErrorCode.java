package com.syn.smsp.constant;

import com.syn.smsp.util.shiro.exception.ErrorCode;

public enum EnumErrorCode implements ErrorCode {
    INVALID_ARGUMENT(400, "请求的参数不正确"),
    UNAUTHORIZED(401, "无权访问"),
    FORBIDDEN(403, "禁止访问"),
    METHOD_NOT_ALLOWED(405, "不允许的请求方法"),
    NOT_ACCEPTABLE(406, "不接受的请求"),
    UNSUPPORTED_MEDIA_TYPE(415, "不支持的Media Type"),
    SERVICE_UNAVAILABLE(503, "服务不可用"),
    GATEWAY_TIMEOUT(504, "请求服务超时"),
    //10XX为登录相关异常
    VERIFICATION_ERROR_CODE(1001, "验证码错误"),
    ACCOUNT_VERIFICATION_FAILED(1002, "用户名或者密码错误"),
    TOKEN_VERIFICATION_ERROR(1003, "token信息为空或者校验失败"),
    TOKEN_EXPIRED_ERROR(1004, "token已过期!"),
    ACCOUNT_IDORKEYORSECRET_FAILED(1005, "app_id or app_key or app_secret is fault!"),
    ;


    private int status;

    private String message;

    EnumErrorCode(int status, String message) {
        this.status = status;
        this.message = message;
    }

    public static EnumErrorCode fromHttpStatus(int httpStatus) {
        for(EnumErrorCode errorCode : values()) {
            if(errorCode.getStatus() == httpStatus) {
                return errorCode;
            }
        }
        return SERVICE_UNAVAILABLE;
    }


    @Override
    public int getCode() {
        return this.getStatus();
    }

    @Override
    public int getStatus() {
        return status;
    }

    @Override
    public String getMessage() {
        return message;
    }
}
