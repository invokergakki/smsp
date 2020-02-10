package com.syn.smsp.service;


import com.syn.smsp.vo.SMSSendVO;
import com.syn.smsp.vo.SMSSendingLogVO;
import com.syn.smsp.vo.SMSTemplateVO;

import java.util.List;

/**
 * 短信设置
 *
 * @author huby
 * createDate  2019/8/26  11:58
 */
public interface SMSSettingsService {

    //新增短信模板
    int insertSMSTemplate(SMSTemplateVO smsTemplate);
    //短信模板列表
    List<SMSTemplateVO> selectSMSTemplate(SMSTemplateVO smsTemplate);
    //根据条件查询短信模板
    SMSTemplateVO selectOneSMSTemplate(SMSTemplateVO smsTemplate);
    //短信模板修改
    int updateSMSTemplate(SMSTemplateVO smsTemplate);
    //短信模板条件删除
    int deleteSMSTemplateByIds(String ids) ;

    //新增短信平台
    int insertSMSSend(SMSSendVO smsSend);
    //短信平台列表
    List<SMSSendVO> selectSMSSend(SMSSendVO smsSend);
    //根据条件查询短信平台
    SMSSendVO selectOneSMSSend(SMSSendVO smsSend);
    //短信平台修改
    int updateSMSSend(SMSSendVO smsSend);
    //短信平台状态修改
    int changeSendStatus(SMSSendVO smsSend);
    //短信平台条件删除
    int deleteSMSSendByIds(String ids) ;

    //发送短信发送日志列表
    List<SMSSendingLogVO> smsSendingLoglist(SMSSendingLogVO smsSendingLog);

    //保存短信发送日志
    int insertSMSSendingLog(SMSSendingLogVO smsSendingLog);
}
