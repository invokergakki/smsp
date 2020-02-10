package com.syn.smsp.vo;


/**
 * Created by zwh on 2018年11月14日20:26:17
 */
public class ReturnVO<T> {

    public String code;

    public String msg;

    public String error;

    public T data;

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public String getError() {
        return error;
    }

    public void setError(String error) {
        this.error = error;
    }

    public T getData() {
        return data;
    }

    public void setData(T data) {
        this.data = data;
    }
}
