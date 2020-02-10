package com.syn.smsp.util.importData;

import com.syn.smsp.vo.WarningVO;
import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFCellStyle;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.HorizontalAlignment;

import javax.servlet.http.HttpServletResponse;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Field;
import java.util.List;

public class ExcelUtils {

	/**
	 * 导出Excel
	 * @param sheetName sheet名称
	 * @param warningVOList 内容
	 * @param wb HSSFWorkbook对象
	 * @return
	 */
	public static void getHSSFWorkbook(String fileName, String sheetName, List<WarningVO> warningVOList, HSSFWorkbook wb,
											   HttpServletResponse response) throws IllegalAccessException {

		// 第一步，创建一个HSSFWorkbook，对应一个Excel文件
		if(wb == null){
			wb = new HSSFWorkbook();
		}

		// 第二步，在workbook中添加一个sheet,对应Excel文件中的sheet
		HSSFSheet sheet = wb.createSheet(sheetName);

		// 第三步，在sheet中添加表头第0行,注意老版本poi对Excel的行数列数有限制
		HSSFRow row = sheet.createRow(0);

		// 第四步，创建单元格，并设置值表头 设置表头居中
		HSSFCellStyle style = wb.createCellStyle();
		style.setAlignment(HorizontalAlignment.CENTER); // 创建一个居中格式

		//声明列对象
		HSSFCell cell = null;

		//创建内容
		for(int i=0;i<warningVOList.size()+1;i++){
			row = sheet.createRow(i + 1);
			Object object = null;
			if(i==0){
				object = warningVOList.get(i);
			}else{
				object = warningVOList.get(i-1);
			}
			Class objectClass = object.getClass();
			Field[] fields = objectClass.getDeclaredFields();
			for(int j=0;j<fields.length;j++){
				Field f = fields[j];
				f.setAccessible(true);
				if(i==0){
					try {
						cell = row.createCell(j);
						cell.setCellValue(f.getName());
						cell.setCellStyle(style);
					} catch (Exception e) {
						e.printStackTrace();
					}
				}else{
					//将内容按顺序赋给对应的列对象
					if(null != f.get(object)){
						row.createCell(j).setCellValue(f.get(object).toString());
					}else{
						row.createCell(j).setCellValue("");
					}
				}
			}
		}
		try {
			setResponseHeader(response, fileName);
			OutputStream os = response.getOutputStream();
			wb.write(os);
			os.flush();
			os.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	//发送响应流方法
	public static void setResponseHeader(HttpServletResponse response, String fileName) {
		try {
			try {
				fileName = new String(fileName.getBytes(),"ISO8859-1");
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}
			response.setContentType("application/octet-stream;charset=ISO8859-1");
			response.setHeader("Content-Disposition", "attachment;filename="+ fileName);
			response.addHeader("Pargam", "no-cache");
			response.addHeader("Cache-Control", "no-cache");
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}
}
