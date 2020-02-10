package com.syn.smsp.service;

import com.syn.smsp.vo.SirenWarningVO;
import com.syn.smsp.vo.SysFaultLogVO;
import com.syn.smsp.vo.SysSensorVO;
import com.syn.smsp.vo.WarningVO;

import java.util.List;

/**
 * 创建
 *
 * @author huby
 * createDate  2019/5/31 0031  9:20
 */
public interface SysFaultLogService {

	/**
	 * 根据条件分页查询设备警报日志
	 *
	 * @param faultLog 传感器信息
	 * @return 传感器信息集合信息
	 */
	List<SysFaultLogVO> selectFaultLogList(SysFaultLogVO faultLog);

	/**
	 * 保存警报日志
	 *
	 * @param faultLog 警报日志信息
	 * @return 结果
	 */
	int insertFaultLog(SysFaultLogVO faultLog);

	/**
	 * 修改传警报日志详细信息
	 *
	 * @param faultLog 警报日志信息
	 * @return 结果
	 */
	int updateFaultLogInfo(SysFaultLogVO faultLog);

	/**
	 * 警报日志状态批处理
	 *
	 * @return 结果
	 */
	void alarmProcessing();
}
