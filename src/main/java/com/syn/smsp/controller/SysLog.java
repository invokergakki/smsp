package com.syn.smsp.controller;

import java.lang.annotation.*;

/**
 * 自定义操作日志记录注解
 *
 * @author huby
 * createDate  2019/6/3 0003  14:15
 */
@Target(ElementType.METHOD)
@Retention(RetentionPolicy.RUNTIME)
@Documented
public @interface SysLog {

    /**
     * 模块
     */
    public String title() default "";

}
