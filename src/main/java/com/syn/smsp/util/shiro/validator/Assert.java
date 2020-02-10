package com.syn.smsp.util.shiro.validator;

import com.syn.smsp.util.shiro.exception.BusinessException;
import org.apache.commons.lang.StringUtils;

/**
 * 数据校验
 * 
 */
public abstract class Assert {

    public static void isBlank(String str, String message) {
        if (StringUtils.isBlank(str)) {
            throw new BusinessException(message);
        }
    }

    public static void isNull(Object object, String message) {
        if (object == null) {
            throw new BusinessException(message);
        }
    }
}
