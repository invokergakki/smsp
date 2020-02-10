package com.syn.smsp.util.shiro.exception;

@SuppressWarnings("serial")
public class BusinessException extends RuntimeException {

    private static final long serialVersionUID = 1L;

    private ErrorCode errorCode;


    public BusinessException(String message) {
        super(message);
    }

    public BusinessException(ErrorCode errcode) {
        this.errorCode = errcode;
    }

    public ErrorCode getErrorCode() {
        return errorCode;
    }

    public void setErrorCode(ErrorCode errorCode) {
        this.errorCode = errorCode;
    }




}
