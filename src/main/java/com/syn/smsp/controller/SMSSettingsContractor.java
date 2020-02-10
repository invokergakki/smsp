package com.syn.smsp.controller;

import com.syn.smsp.service.SMSSettingsService;
import com.syn.smsp.toor.AjaxResult;
import com.syn.smsp.toor.page.TableDataInfo;
import com.syn.smsp.vo.SMSSendVO;
import com.syn.smsp.vo.SMSSendingLogVO;
import com.syn.smsp.vo.SMSTemplateVO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * 短信设置
 *
 * @author huby
 * createDate  2019/8/26  11:57
 */
@Controller
@RequestMapping("/sys/sms")
public class SMSSettingsContractor extends BaseController {

    @Autowired
    private SMSSettingsService smsSettingsService;

    private String prefix = "/sys/sms";

    private static final Logger log = LoggerFactory.getLogger(SMSSettingsContractor.class);

    // 短信发送模板设置
    @RequestMapping(value = "/template", method = {RequestMethod.GET,RequestMethod.POST})
    public String smsTemplate(ModelMap mmap)
    {
        return prefix + "/template/template";
    }

    // 条件查询短信发送模板列表
    @PostMapping("/template/list")
    @ResponseBody
    public TableDataInfo list(SMSTemplateVO smsTemplate)
    {
        startPage();
        List<SMSTemplateVO> list = smsSettingsService.selectSMSTemplate(smsTemplate);
        return getDataTable(list);
    }


    /**
     * 新增短信发送模板
     */
    @GetMapping("/template/add")
    public String add(ModelMap mmap)
    {
        return prefix + "/template/add";
    }

    /**
     * 新增保存短信发送模板
     */
    @SysLog(title = "新增短信模板")
    @PostMapping("/template/add")
    @ResponseBody
    public AjaxResult addSave(SMSTemplateVO smsTemplate)
    {
        return toAjax(smsSettingsService.insertSMSTemplate(smsTemplate));
    }

    /**
     * 修改短信发送模板信息
     */
    @GetMapping("/template/edit/{id}")
    public String edit(@PathVariable("id") Integer id, ModelMap mmap)
    {
        if(null == id){
            return null;
        }
        SMSTemplateVO smsTemplate =  new SMSTemplateVO();
        smsTemplate.setId(id);
        mmap.put("smsTemplate",smsSettingsService.selectOneSMSTemplate(smsTemplate));
        return prefix + "/template/edit";
    }

    /**
     * 修改短信发送模板
     */
    @SysLog(title = "短信模板修改")
    @PostMapping("/template/edit")
    @ResponseBody
    public AjaxResult editSave(SMSTemplateVO smsTemplate)
    {
        return toAjax(smsSettingsService.updateSMSTemplate(smsTemplate));
    }

    /**
     * 短信模板状态修改
     */
    @SysLog(title = "短信模板状态修改")
    @PostMapping("/template/changeTemplateStatus")
    @ResponseBody
    public AjaxResult changeTemplateStatus(SMSTemplateVO smsTemplate)
    {
        return toAjax(smsSettingsService.updateSMSTemplate(smsTemplate));
    }
    /**
     * 删除短信模板
     */
    @SysLog(title = "短信模板删除")
    @PostMapping("/template/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        try
        {
            return toAjax(smsSettingsService.deleteSMSTemplateByIds(ids));
        }
        catch (Exception e)
        {
            return error(e.getMessage());
        }
    }






    // 短信平台设置
    @RequestMapping(value = "/send", method = {RequestMethod.GET,RequestMethod.POST})
    public String smsSend(ModelMap mmap)
    {
        return prefix + "/send/send";
    }

    // 条件查询短信平台列表
    @PostMapping("/send/list")
    @ResponseBody
    public TableDataInfo sendList(SMSSendVO smsSend)
    {
        startPage();
        List<SMSSendVO> list = smsSettingsService.selectSMSSend(smsSend);
        return getDataTable(list);
    }


    /**
     * 新增短信平台
     */
    @GetMapping("/send/add")
    public String sendAdd(ModelMap mmap)
    {
        SMSTemplateVO smsTemplate =new SMSTemplateVO();
        smsTemplate.setStatus(1);// 查询可用的短信模板
        mmap.put("smsTemplate",smsSettingsService.selectSMSTemplate(smsTemplate));
        return prefix + "/send/add";
    }

    /**
     * 新增短信平台
     */
    @SysLog(title = "新增短信平台")
    @PostMapping("/send/add")
    @ResponseBody
    public AjaxResult sendAddSave(SMSSendVO smsSend)
    {
        if(null == smsSend.getSmsTemplateId()){
            return error("短信模板不能为空");
        }
        return toAjax(smsSettingsService.insertSMSSend(smsSend));
    }

    /**
     * 修改短信平台
     */
    @GetMapping("/send/edit/{id}")
    public String sendAdit(@PathVariable("id") Integer id, ModelMap mmap)
    {
        if(null == id){
            return null;
        }
        SMSSendVO smsSend =  new SMSSendVO();
        smsSend.setId(id);
        mmap.put("smsSend",smsSettingsService.selectOneSMSSend(smsSend));
        mmap.put("smsTemplate",smsSettingsService.selectSMSTemplate(new SMSTemplateVO()));
        return prefix + "/send/edit";
    }

    /**
     * 短信平台修改
     */
    @SysLog(title = "短信平台修改")
    @PostMapping("/send/edit")
    @ResponseBody
    public AjaxResult sendEditSave(SMSSendVO smsSend)
    {
        if(null == smsSend.getSmsTemplateId()){
            return error("短信模板不能为空");
        }
        return toAjax(smsSettingsService.updateSMSSend(smsSend));
    }
    /**
     * 短信平台状态修改
     */
    @SysLog(title = "短信平台状态修改")
    @PostMapping("/send/changeSendStatus")
    @ResponseBody
    public AjaxResult changeSendStatus(SMSSendVO smsSend)
    {
        return toAjax(smsSettingsService.changeSendStatus(smsSend));
    }
    /**
     * 短信平台删除
     */
    @SysLog(title = "短信平台删除")
    @PostMapping("/send/remove")
    @ResponseBody
    public AjaxResult sendRemove(String ids)
    {
        try
        {
            return toAjax(smsSettingsService.deleteSMSSendByIds(ids));
        }
        catch (Exception e)
        {
            return error(e.getMessage());
        }
    }



    // 短信发送日志页面
    @RequestMapping(value = "/smsSendingLog", method = {RequestMethod.GET,RequestMethod.POST})
    public String smsSendingLog(ModelMap mmap)
    {
        return prefix + "/SMSSendingLog";
    }

    // 条件查询短信发送日志列表
    @PostMapping("/smsSendingLoglist")
    @ResponseBody
    public TableDataInfo smsSendingLoglist(SMSSendingLogVO smsSendingLog)
    {
        startPage();
        List<SMSSendingLogVO> list = smsSettingsService.smsSendingLoglist(smsSendingLog);
        return getDataTable(list);
    }
}
