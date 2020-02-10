package com.syn.smsp.service.impl;

import com.syn.smsp.service.SysFaultLogService;
import com.syn.smsp.toor.StringUtils;
import com.syn.smsp.util.GeneralDAO;
import com.syn.smsp.util.ShiroUtils;
import com.syn.smsp.vo.SysFaultLogVO;
import com.syn.smsp.vo.SysSensorVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 创建
 *
 * @author huby
 * createDate  2019/5/31 0031  9:20
 */
@Service
public class SysFaultLogServiceImpl  implements SysFaultLogService {

    @Autowired
    private GeneralDAO generalDAO;

    /**
     * 根据条件分页查询设备警报日志
     *
     * @param faultLog 传感器信息
     * @return 传感器信息集合信息
     */
    public List<SysFaultLogVO> selectFaultLogList(SysFaultLogVO faultLog){
        return generalDAO.queryList("sysFaultLogDao.selectFaultLogList",faultLog);
    }

    /**
     * 保存警报日志
     *
     * @param faultLog 警报日志信息
     * @return 结果
     */
    public int insertFaultLog(SysFaultLogVO faultLog){
        return generalDAO.save("sysFaultLogDao.insertFaultLog",faultLog);
    }

    /**
     * 修改传警报日志详细信息
     *
     * @param faultLog 警报日志信息
     * @return 结果
     */
    public int updateFaultLogInfo(SysFaultLogVO faultLog){
        return generalDAO.updateObject("sysFaultLogDao.updateFaultLogInfo",faultLog);
    }

    /**
     *  警报日志状态批处理
     *
     * @return 结果
     */
    public void alarmProcessing(){
        SysSensorVO sensor = new SysSensorVO();
        //查询在线 24小时前推送的数据
        sensor.setRunningState("0");
        List<SysSensorVO> onLine = generalDAO.queryList("sysSensorDao.alarmOnLine",sensor);
        if(StringUtils.isNotNull(onLine) && onLine.size()>0){
             for(SysSensorVO sysSenso : onLine){
                 SysFaultLogVO faultLog = faultLog(sysSenso);
                 insertFaultLog(faultLog);
                 updateRunningState(new SysSensorVO(),"1",sysSenso.getIMEI());
             }
        }
        //查询不在线 24小时内有推送的数据
        sensor.setRunningState("1");
        List<SysSensorVO> offline = generalDAO.queryList("sysSensorDao.alarmOffline",sensor);
        if(StringUtils.isNotNull(offline) && offline.size()>0){
            for(SysSensorVO sysSenso : offline){
                SysFaultLogVO faultLog = faultLog(sysSenso);
                updateFaultLogInfo(faultLog);
                updateRunningState(new SysSensorVO(),"0",sysSenso.getIMEI());
            }
        }
    }
    //根据设备编号更新设备在线状态
    public int updateRunningState(SysSensorVO sysSenso,String runningState,String IMEI){
        sysSenso.setIMEI(IMEI);
        sysSenso.setRunningState(runningState);
       // sysSenso.setUpdateBy(ShiroUtils.getUserEntity().getUserName());
        return generalDAO.updateObject("sysSensorDao.updateSensor",sysSenso);
    }
    public SysFaultLogVO faultLog(SysSensorVO sysSenso ){
        SysFaultLogVO faultLog = new SysFaultLogVO();
        faultLog.setIMEI(sysSenso.getIMEI());
        faultLog.setImeiName(sysSenso.getImeiName());
        faultLog.setStatus(sysSenso.getRunningState());
        return faultLog;
    }
}
