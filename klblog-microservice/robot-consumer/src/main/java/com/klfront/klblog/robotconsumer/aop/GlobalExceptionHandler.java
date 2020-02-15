package com.klfront.klblog.robotconsumer.aop;

import com.klfront.config.GlobalResponse;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;
import org.springframework.web.method.HandlerMethod;

import javax.servlet.http.HttpServletRequest;
import java.lang.reflect.Method;

/**
 * 全局异常处理类
 *
 * @author:lujinlong
 * @created:2019-09-08 01:08
 **/
@Slf4j
@RestControllerAdvice
public class GlobalExceptionHandler {
    // 服务器异常处理方法
    @ExceptionHandler(value = Exception.class)
    public Object exception(HttpServletRequest request, Exception e, HandlerMethod handlerMethod) {
        Method method = handlerMethod.getMethod();
        log.error(method.getName()+" 服务器发生异常，异常信息为:", e);
        return GlobalResponse.fail(e.getMessage(),500);
    }
}

