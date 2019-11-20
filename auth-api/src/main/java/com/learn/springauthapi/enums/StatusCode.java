package com.learn.springauthapi.enums;

/**
 * autor:liman
 * createtime:2019/11/20
 * comment: 返回的状态码枚举值
 */
public enum StatusCode {

    Success(00000,"成功"),
    Fail(9999,"失败"),
    InvalidParams(201,"非法的参数!");

    private Integer code;
    private String msg;

    StatusCode(Integer code, String msg) {
        this.code = code;
        this.msg = msg;
    }

    public Integer getCode() {
        return code;
    }

    public void setCode(Integer code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }
}
