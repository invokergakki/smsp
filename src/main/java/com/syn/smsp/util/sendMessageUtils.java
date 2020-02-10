//package com.syn.smsp.util;
//
//import com.syn.smsp.constant.Constant;
//import com.taobao.api.ApiException;
//import com.taobao.api.DefaultTaobaoClient;
//import com.taobao.api.TaobaoClient;
//import com.taobao.api.request.AlibabaAliqinFcSmsNumSendRequest;
//import com.taobao.api.response.AlibabaAliqinFcSmsNumSendResponse;
//
//public class sendMessageUtils {
//
//	private void getAuthCode(String phoneNum, String type) {
//		String url = "http://gw.api.taobao.com/router/rest";
//		TaobaoClient client = new DefaultTaobaoClient(url, Constant.appkey, Constant.secret);
//		AlibabaAliqinFcSmsNumSendRequest req = new AlibabaAliqinFcSmsNumSendRequest();
//		req.setExtend("123456");
//		req.setSmsType("normal");
//		req.setSmsFreeSignName("消防平台");
//		String num = "发送内容";
//		req.setSmsParamString("{\"number\":\"" + num + "\"}");
//		req.setRecNum(phoneNum);
//		req.setSmsTemplateCode("SMS_69180187");
//		try {
//			AlibabaAliqinFcSmsNumSendResponse rsp = client.execute(req);
//			System.out.println(rsp.getBody());
//		} catch (ApiException e) {
//			e.printStackTrace();
//		}
//	}
//}
