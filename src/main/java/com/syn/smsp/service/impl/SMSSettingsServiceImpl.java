package com.syn.smsp.service.impl;

import com.syn.smsp.service.SMSSettingsService;
import com.syn.smsp.toor.Convert;
import com.syn.smsp.util.GeneralDAO;
import com.syn.smsp.util.ShiroUtils;
import com.syn.smsp.vo.SMSSendVO;
import com.syn.smsp.vo.SMSSendingLogVO;
import com.syn.smsp.vo.SMSTemplateVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * 短信设置
 *
 * @author huby
 * createDate  2019/8/26  11:58
 */
@Service
public class SMSSettingsServiceImpl implements SMSSettingsService {

    @Autowired
    private GeneralDAO generalDAO;

    //新增短信模板
    @Override
    public int insertSMSTemplate(SMSTemplateVO smsTemplate){
        smsTemplate.setCreateBy(ShiroUtils.getUserEntity().getUserName());
        generalDAO.save("smsTemplateDao.insertSMSTemplate",smsTemplate);
        return 1;
    }
    //短信模板列表
    @Override
    public List<SMSTemplateVO> selectSMSTemplate(SMSTemplateVO smsTemplate){
        return generalDAO.queryList("smsTemplateDao.selectSMSTemplate",smsTemplate);
    }
    //根据条件查询短信平台
    @Override
    public SMSTemplateVO selectOneSMSTemplate(SMSTemplateVO smsTemplate){
        return generalDAO.queryObject("smsTemplateDao.selectSMSTemplate",smsTemplate);
    }
    //短信模板修改
    @Override
    public int updateSMSTemplate(SMSTemplateVO smsTemplate){
        smsTemplate.setUpdateBy(ShiroUtils.getUserEntity().getUserName());
        generalDAO.updateObject("smsTemplateDao.updateSMSTemplate",smsTemplate);
        return 1;
    }
    //短信模板条件删除
    @Override
    public int deleteSMSTemplateByIds(String ids) {
        generalDAO.deleteObject("smsTemplateDao.deleteSMSTemplateByIds", Convert.toLongArray(ids));
        return 1;
    }






    //新增短信平台
    @Override
    @Transactional
    public int insertSMSSend(SMSSendVO smsSend){
        smsSend.setCreateBy(ShiroUtils.getUserEntity().getUserName());
        generalDAO.save("smsSendDao.insertSMSSend",smsSend);
        updateSMSSendStatus(smsSend);
        return 1;
    }
    //短信平台列表
    @Override
    public List<SMSSendVO> selectSMSSend(SMSSendVO smsSend){
        return generalDAO.queryList("smsSendDao.selectSMSSend",smsSend);
    }
    //根据条件查询短信平台
    @Override
    public SMSSendVO selectOneSMSSend(SMSSendVO smsSend){
        return generalDAO.queryObject("smsSendDao.selectSMSSend",smsSend);
    }
    //短信模板平台
    @Override
    @Transactional
    public int updateSMSSend(SMSSendVO smsSend){
        smsSend.setUpdateBy(ShiroUtils.getUserEntity().getUserName());
        generalDAO.updateObject("smsSendDao.updateSMSSend",smsSend);
        updateSMSSendStatus(smsSend);
        return 1;
    }
    //短信模板平台状态修改
    @Override
    @Transactional
    public int changeSendStatus(SMSSendVO smsSend){
        smsSend.setUpdateBy(ShiroUtils.getUserEntity().getUserName());
        generalDAO.updateObject("smsSendDao.updateSMSSend",smsSend);
        updateSMSSendStatus(smsSend);
        return 1;
    }
    //短信平台条件删除
    @Override
    public int deleteSMSSendByIds(String ids) {
        generalDAO.deleteObject("smsSendDao.deleteSMSSendByIds",Convert.toLongArray(ids));
        return 1;
    }
    //批量关闭短信平台
    public void updateSMSSendStatus(SMSSendVO smsSend) {
        if(smsSend.getStatus() == 1){
            smsSend.setUpdateBy(ShiroUtils.getUserEntity().getUserName());
            generalDAO.updateObject("smsSendDao.updateSMSSendStatus",smsSend);
        }
    }

    //发送短信发送日志列表
    @Override
    public List<SMSSendingLogVO> smsSendingLoglist(SMSSendingLogVO smsSendingLog){
        return generalDAO.queryList("smsSendingLogDao.selectSMSSendingLogList",smsSendingLog);
    }

    //保存短信发送日志
    @Override
    public int insertSMSSendingLog(SMSSendingLogVO smsSendingLog){
        smsSendingLog.setCreateBy(ShiroUtils.getUserEntity().getUserName());
        generalDAO.save("smsSendingLogDao.save",smsSendingLog);
        return 1;
    }
}
