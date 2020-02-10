package com.syn.smsp.service.impl;

import com.syn.smsp.service.CommonService;
import com.syn.smsp.service.SMSSettingsService;
import com.syn.smsp.service.WarningManagerService;
import com.syn.smsp.toor.Convert;
import com.syn.smsp.util.DateUtils;
import com.syn.smsp.util.GeneralDAO;
import com.syn.smsp.util.ShiroUtils;
import com.syn.smsp.vo.SirenWarningVO;
import com.syn.smsp.vo.SysSensorVO;
import com.syn.smsp.vo.WarningVO;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class WarningManagerServiceImpl implements WarningManagerService {
	@Autowired
	private GeneralDAO generalDAO;

	@Autowired
	private CommonService commonService;

	public List<WarningVO> getWarningList(WarningVO warningVO) {
		if(null!= warningVO && StringUtils.isNotBlank(warningVO.getFacilityName())){
			warningVO.setFacilityName("%"+warningVO.getFacilityName()+"%");
		}
		return generalDAO.queryList("warningDao.getWarnningList",warningVO);
	}

	public void sendSerenMsg(SirenWarningVO sirenWarningVO){
		if(null != sirenWarningVO && null != sirenWarningVO.getAlarmStatus() && null != sirenWarningVO.getIMEI() && Integer.parseInt(sirenWarningVO.getAlarmStatus()) != 7){
			//设备是否已经注册
 			SysSensorVO sysSensorVO = generalDAO.queryObject("sysSensorDao.queryByIMEI", sirenWarningVO.getIMEI());
//			if(null != sysSensorVO && null != sysSensorVO.getIMEI()){
				//设备是否已经报警
				generalDAO.save("warningDao.saveWarningLog",sirenWarningVO);
				WarningVO warningVO = generalDAO.queryObject("warningDao.getWarnningByIMEI", sirenWarningVO);
				if(null == warningVO || null == warningVO.getIMEI()){
					//发送短信
					//【253云通讯】{$var}{$var}{$var}的烟雾报警器发出{{$var}}（设备名称：{$var}，设备编号：{$var}），请及时处理！
					if(sirenWarningVO.getAlarmStatus().equals("1") ){
						sendSMS(sysSensorVO);
					}
					//更改设备状态
					generalDAO.updateObject("sysSensorDao.updateSensorByIMEI",sirenWarningVO);
					//保存报警信息
					sirenWarningVO.setStatus("0");
					if(sirenWarningVO.getAlarmStatus().equals("2") || sirenWarningVO.getAlarmStatus().equals("11")){
						sirenWarningVO.setStatus("1");
					}
					generalDAO.save("warningDao.saveWarning",sirenWarningVO);
				}else{

					Long nowTime = new Date().getTime();
					Long updateTime = warningVO.getUpdateTime().getTime();
					if((nowTime - updateTime) >= 300000){//五分钟发送一次短信
						//发送短信
						sendSMS(sysSensorVO) ;
					}
					sirenWarningVO.setStatus("0");
					if(sirenWarningVO.getAlarmStatus().equals("2") || sirenWarningVO.getAlarmStatus().equals("11")){
						sirenWarningVO.setStatus("1");
					}
					generalDAO.updateObject("warningDao.updateWarning", sirenWarningVO);
				}
//			}
		}else{
			//心跳
			generalDAO.updateObject("sysSensorDao.heartbeatByIMEI",sirenWarningVO);
		}
	}

	public boolean sendSMS(SysSensorVO sysSensorVO){
		StringBuilder paramps = new StringBuilder();
		paramps.append("烟雾报警,");
		paramps.append(DateUtils.getTime()+",");
		paramps.append(sysSensorVO.getSensorLocation()+",");
		paramps.append("告警信息,");
		paramps.append(sysSensorVO.getImeiName()+",");
		paramps.append(sysSensorVO.getIMEI()+";");
	  return 	commonService.smsSendingMessage("烟雾报警","");
	}
	public void updateRunningState(){
		generalDAO.updateObject("sysSensorDao.updateRunningState",0);
		generalDAO.updateObject("sysSensorDao.updateRunningState",1);
	}
	/**
	 * 修改传感器个人详细信息
	 *
	 * @param ids
	 * @param warningDis
	 * @return 结果
	 */
	public int updateStatus(String ids, String warningDis)
	{
		try {
			if(null != ids){
				Long[] longIds = Convert.toLongArray(ids);
				if(longIds.length > 0){
					Map<String,Object> params = new HashMap<>();
					params.put("ids",longIds);
					params.put("warningDis",warningDis);
					int update = generalDAO.updateObject("warningDao.updateStatus",params);
					for(Long longId:longIds){
						params.put("longId",longId);
						generalDAO.updateObject("warningDao.updateLogStatus",params);
					}
					return  update;
				}
			}
			return 0;
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
	}

	public List<WarningVO> getWarningLogList(WarningVO warningVO) {
		return generalDAO.queryList("warningDao.getWarnningLogList",warningVO);
	}
	public WarningVO selectWarnningStatus() {
		return generalDAO.queryObject("warningDao.selectWarnningStatus");
	}
}
