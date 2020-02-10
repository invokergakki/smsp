package com.syn.smsp.service;

import com.syn.smsp.vo.SirenWarningVO;
import com.syn.smsp.vo.WarningVO;

import java.util.List;
import java.util.Map;

/**
 * agent monitor
 * 
 */
public interface WarningManagerService {

	List<WarningVO> getWarningList(WarningVO warningVO);

	void sendSerenMsg(SirenWarningVO sirenWarningVO);

	void updateRunningState();

	/**
	 * 修改报警管理详细信息
	 *
	 * @param ids
	 * @param warningDis
	 * @return 结果
	 */
	int updateStatus(String ids, String warningDis);

	List<WarningVO> getWarningLogList(WarningVO warningVO);

	WarningVO selectWarnningStatus();
}
