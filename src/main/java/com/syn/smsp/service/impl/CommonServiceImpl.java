package com.syn.smsp.service.impl;

import com.alibaba.fastjson.JSON;
import com.syn.smsp.constant.Constant;
import com.syn.smsp.service.CommonService;
import com.syn.smsp.service.SMSSettingsService;
import com.syn.smsp.toor.sendMessage.ChuangLanSmsUtil;
import com.syn.smsp.toor.sendMessage.SmsVariableRequest;
import com.syn.smsp.toor.sendMessage.SmsVariableResponse;
import com.syn.smsp.util.GeneralDAO;
import com.syn.smsp.util.ShiroUtils;
import com.syn.smsp.toor.StringUtils;
import com.syn.smsp.vo.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;

@Service
public class CommonServiceImpl implements CommonService {

	@Autowired
	private GeneralDAO generalDAO;

	@Autowired
	private SMSSettingsService smsSettingsService;

	@Override
	public ReturnVO setErrorModel(Exception e, ReturnVO returnVO){
		if(null == returnVO){
			returnVO = new ReturnVO();
		}
		returnVO.setCode(Constant.error_code);
		returnVO.setError(e.getMessage());
		returnVO.setMsg("系统异常，请刷新重试");
		return returnVO;
	}

	@Override
	public ReturnVO setDefeatModel(String defeatMsg, ReturnVO returnVO){
		if(null == returnVO){
			returnVO = new ReturnVO();
		}
		returnVO.setCode(Constant.defeat_code);
		returnVO.setMsg(defeatMsg);
		return returnVO;
	}

	@Override
	public ReturnVO setSuccessModel(String successMsg, ReturnVO returnVO){
		if(null == returnVO){
			returnVO = new ReturnVO();
		}
		returnVO.setCode(Constant.success_code);
		returnVO.setMsg(successMsg);
		return returnVO;
	}
	/*
	 *  创蓝253短信发送接口
	 *  短信内容 String module = "报警管理模块";
	 *  短信内容 Integer smsSendId 平台id;
	 *  【烟雾报警】{报警时间}{设备地点}的烟雾报警器发出{告警信息}（设备名称：{设备名称}，设备编号：{设备编号}），请及时处理！
	 *  参数组  String params = "15712831281,先生,123456,3;";
	 */
	@Override
	public boolean smsSendingMessage(String title,String paramps){
		SMSSendVO smsSendVO = new SMSSendVO();
		smsSendVO.setSmsTemplateName(title);
        smsSendVO.setStatus(1);
		SMSSendVO smsSend = smsSettingsService.selectOneSMSSend(smsSendVO);
		SMSSendingLogVO sendMessage =  new SMSSendingLogVO();
		try {
			if(null != smsSend){
				SMSTemplateVO smsTemplateVO = new SMSTemplateVO();
				smsTemplateVO.setId(smsSend.getSmsTemplateId());
                smsTemplateVO.setStatus(1);
				SMSTemplateVO smsTemplate = smsSettingsService.selectOneSMSTemplate(smsTemplateVO);
				if(null != smsTemplate){
					sendMessage.setModule(smsTemplate.getModule());
					sendMessage.setMsg(smsTemplate.getTemplateMsg());
					sendMessage.setParams(paramps);
					sendMessage.setAccount(smsSend.getAccount());
					sendMessage.setPassword(smsSend.getPassword());
					sendMessage.setRequestUrl(smsSend.getSmsVariableRequestUrl());
					//短信内容
					//String msg = "【253云通讯】尊敬的{$var},您好,您的验证码是{$var},{$var}分钟内有效";
					//参数组
					//String params = "15712831281,先生,123456,3;";

					//获取状态报告
					String report= "true";
					sendMessage.setReportStatus(report);
					SmsVariableRequest smsVariableRequest=new SmsVariableRequest(smsSend.getAccount(), smsSend.getPassword(), smsTemplate.getTemplateMsg(),paramps, report);
					//发送短信请求报文 json
					String requestJson = JSON.toJSONString(smsVariableRequest);
					System.out.println("before request string is: " + requestJson);
					//调用发送短信接口 进行短信发送
					String response = ChuangLanSmsUtil.sendSmsByPost(smsSend.getSmsVariableRequestUrl(), requestJson);
					SmsVariableResponse smsVariableResponse = JSON.parseObject(response, SmsVariableResponse.class);
					//调用发送短信接口发送返回结果报文
					System.out.println("response  toString is : " + smsVariableResponse);
					SimpleDateFormat sDateFormat=new SimpleDateFormat("yyyyMMddHHmmss"); //加上时间
					SimpleDateFormat simple =new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); //加上时间
					//必须捕获异常
					SimpleDateFormat s=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); //加上时间
					sendMessage.setResponseTime(simple.format(sDateFormat.parse(smsVariableResponse.getTime())));
					sendMessage.setMsgId(smsVariableResponse.getMsgId());
					if(null == smsVariableResponse.getMsgId() || StringUtils.isEmpty(smsVariableResponse.getMsgId())){
						sendMessage.setMsgId(smsVariableResponse.getCode());
					}

					if(StringUtils.isNotEmpty(smsVariableResponse.getFailNum())){
						sendMessage.setFailNum(Integer.valueOf(smsVariableResponse.getFailNum()));
					}
					if(StringUtils.isNotEmpty(smsVariableResponse.getSuccessNum())){
						sendMessage.setSuccessNum(Integer.valueOf(smsVariableResponse.getSuccessNum()));
					}
					sendMessage.setResponseMsg(smsVariableResponse.getErrorMsg());
					if(StringUtils.isEmpty(smsVariableResponse.getErrorMsg())){
						sendMessage.setStatus("1");
					}else{
                        sendMessage.setStatus("0");
                    }
				}
			}
		}catch (Exception e){
		}
        smsSettingsService.insertSMSSendingLog(sendMessage);
       if(sendMessage.getStatus().equals("0")){
           return false;
       }else {
           return true;
       }
	}

	public static void main(String[] args) {
		test();
	}
	public static void test(){
		try {
			String report= "true";
			SmsVariableRequest smsVariableRequest=new SmsVariableRequest("N6664837", "123456aaabbb",
					"【253云通讯】{$var}{$var}{$var}的烟雾报警器发出{{$var}}（设备名称：{$var}，设备编号：{$var}），请及时处理！",
					"15712831281,烟雾报警,121212,1212,烟雾报警,121212,1212;", report);
			//发送短信请求报文 json
			String requestJson = JSON.toJSONString(smsVariableRequest);
			System.out.println("before request string is: " + requestJson);
			//调用发送短信接口 进行短信发送
			String response = ChuangLanSmsUtil.sendSmsByPost("https://smssh1.253.com/msg/variable/json", requestJson);
			SmsVariableResponse smsVariableResponse = JSON.parseObject(response, SmsVariableResponse.class);
			//调用发送短信接口发送返回结果报文
			System.out.println("response  toString is : " + smsVariableResponse);
			SimpleDateFormat sDateFormat=new SimpleDateFormat("yyyyMMddHHmmss"); //加上时间
			SimpleDateFormat simple =new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); //加上时间
			//必须捕获异常
			SimpleDateFormat s=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); //加上时间

		}catch (Exception e){
		}
	}
}