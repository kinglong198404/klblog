package com.klfront.config;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

/**
 * 通用的数据返回对象
 * @param <T>
 */
@Data
@ToString
public class GlobalResponse<T> {
    protected boolean success = false;
    private Integer code;
    private String message;
    private T data;

    private final static Integer SUCCESS_CODE = 200;
    private final static Integer AUTHFAIL_CODE =401;

    public GlobalResponse(T data,boolean success){
        this.data = data;
        this.success = success;
    }

    public static <T> GlobalResponse<T> success(T data){
        GlobalResponse<T> res = new GlobalResponse(data,true);
        res.setCode(SUCCESS_CODE);
        return res;
    }
    public static <T> GlobalResponse<T> authfail(String errorMsg){
        GlobalResponse<T> res =  new GlobalResponse(null,false);
        res.setCode(AUTHFAIL_CODE);
        res.setMessage(errorMsg);
        return res;
    }
    public static <T> GlobalResponse<T> fail(String errorMsg, Integer errCode){
        GlobalResponse<T> res =  new GlobalResponse(null,false);
        res.setCode(errCode);
        res.setMessage(errorMsg);
        return res;
    }
}
