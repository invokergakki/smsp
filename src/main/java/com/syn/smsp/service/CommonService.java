package com.syn.smsp.service;

import com.syn.smsp.vo.ReturnVO;

/**
 * 通用接口
 * 
 */
public interface CommonService {

    ReturnVO setErrorModel(Exception e, ReturnVO returnModel);

    public ReturnVO setDefeatModel(String defeatMsg, ReturnVO returnModel);

    public ReturnVO setSuccessModel(String successMsg, ReturnVO returnModel);

    /*
     *  创蓝253短信发送接口
     *  短信内容 String module = "报警管理模块";
     *  短信内容 String msg = "【253云通讯】尊敬的{$var},您好,您的验证码是{$var},{$var}分钟内有效";
     *  参数组  String params = "15712831281,先生,123456,3;";
     */
    public boolean smsSendingMessage(String title,String paramps);
}
