package com.syn.smsp.util;

import org.jsoup.Connection;
import org.jsoup.Jsoup;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.Enumeration;
import java.util.Map;

public class HttpUtils {

	public static String userAgent = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36";
	public static String Connection_ = "keep-alive";
	public static String Content_type = "application/json;charset=UTF-8";

	public static int timeOut = 30000;

	/***
	 * get请求toString
	 * @return
	 */
	public static byte[] sendGet(String url){
		try {
			Connection con_index = Jsoup.connect(url);
			con_index.header("Connection", Connection_);
			con_index.header("User-Agent", userAgent);
			con_index.header("Content-type", Content_type);
			Connection.Response purepaths_childrenDocument = con_index.ignoreContentType(true).method(Connection.Method.GET)
					.timeout(timeOut)
					.execute();
			byte[] bytes = purepaths_childrenDocument.bodyAsBytes();
			return bytes;
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}

	/***
	 * post请求
	 * @return
	 */
	public static byte[] sendPost(String url, Enumeration<String> headers, Map<String,String[]> paramsMap, HttpServletRequest request){
		try {
			StringBuilder urlBuilder = new StringBuilder(url);
			int num = 0;
			for (String key : paramsMap.keySet()) {
				if(num == 0){
					urlBuilder.append("?");
				}else{
					urlBuilder.append("&");
				}
				urlBuilder.append(key);
				urlBuilder.append("=");
				if(paramsMap.get(key).length > 1){
					urlBuilder.append(paramsMap.get(key).toString());
				}else{
					urlBuilder.append(paramsMap.get(key)[0]);
				}
				num++;
			}
			Connection con_index = Jsoup.connect(urlBuilder.toString());
			con_index.header("Connection", Connection_);
			con_index.header("User-Agent", userAgent);
			con_index.header("Content-type", Content_type);
			Connection.Response purepaths_childrenDocument = con_index.ignoreContentType(true).method(Connection.Method.POST)
					.timeout(timeOut)
					.execute();
			byte[] bytes = purepaths_childrenDocument.bodyAsBytes();
			return bytes;
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}
}
