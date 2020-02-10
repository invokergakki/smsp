package com.syn.smsp.service.impl;

import com.syn.smsp.config.UserConstants;
import com.syn.smsp.service.SysSensorService;
import com.syn.smsp.toor.Constants;
import com.syn.smsp.toor.Convert;
import com.syn.smsp.toor.StringUtils;
import com.syn.smsp.util.GeneralDAO;
import com.syn.smsp.util.ShiroUtils;
import com.syn.smsp.util.shiro.exception.BusinessException;
import com.syn.smsp.vo.SensorVO;
import com.syn.smsp.vo.SysDeptVO;
import com.syn.smsp.vo.SysSensorVO;
import com.syn.smsp.vo.SysUserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;


/**
 *  传感器管理
 */
@Service
public class SysSensorServiceImpl implements SysSensorService {
    @Autowired
    private GeneralDAO generalDAO;


    /**
     * 根据条件分页查询传感器列表
     *
     * @param sensor 传感器信息
     * @return 传感器信息集合信息
     */
    @Override
    public List<SysSensorVO> selectSensorList(SysSensorVO sensor)
    {
        // 生成数据权限过滤条件
        return generalDAO.queryList("sysSensorDao.selectSensorList",sensor);
    }

    /**
     * 新增保存传感器信息
     *
     * @param sensor 传感器信息
     * @return 结果
     */
    @Override
    public int insertSensor(SysSensorVO sensor)
    {
        sensor.setCreateBy(ShiroUtils.getUserEntity().getUserName());
       return  generalDAO.save("sysSensorDao.insertSensor",sensor);

    }

    /**
     * 设备注册数据推送接口
     *
     * @param sensor
     * @return 结果
     */
    @Override
    public boolean registerInsertSensor(SensorVO sensor)
    {
        SysSensorVO sensorVO = generalDAO.queryObject("sysSensorDao.selectSensorById",sensor);
        if(StringUtils.isNotNull(sensorVO)){
            return false;
        }
        sensorVO.setCreateBy(ShiroUtils.getUserEntity().getUserName());
        return generalDAO.save("sysSensorDao.registerMsg", sensor) > 0;
    }

    /**
     * 通过传感器ID查询传感器
     *
     * @param IMEI 传感器ID
     * @return 传感器对象信息
     */
    @Override
    public SysSensorVO selectSensorById(String IMEI)
    {
        SysSensorVO sensorVO = new SysSensorVO();
        sensorVO.setIMEI(IMEI);
        return generalDAO.queryObject("sysSensorDao.selectSensorById",sensorVO);
    }

    /**
     * 修改传感器个人详细信息
     *
     * @param sensor 传感器信息
     * @return 结果
     */
    @Override
    public int updateSensorInfo(SysSensorVO sensor)
    {
        sensor.setUpdateBy(ShiroUtils.getUserEntity().getUserName());
        return  generalDAO.updateObject("sysSensorDao.updateSensor",sensor);
    }
    /**
     * 校验用户名称是否唯一
     *
     * @param sensor 用户信息
     * @return
     */
    @Override
    public String checkMessageUnique(SysSensorVO sensor)
    {
        SysSensorVO info = generalDAO.queryObject("sysSensorDao.selectSensorById",sensor);
        if (StringUtils.isNotNull(info))
        {
            return UserConstants.USER_PHONE_NOT_UNIQUE;
        }
        return UserConstants.USER_PHONE_UNIQUE;
    }
    /**
     * 批量删除传感器信息
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteSensorByIds(String ids)
    {
        return generalDAO.deleteObject("sysSensorDao.deleteSensorByIds",Convert.toLongArray(ids));

    }
    /**
     * 导入传感器数据
     *
     * @param sensorList 传感器数据列表
     * @param isUpdateSupport 是否更新支持，如果已存在，则进行更新数据
     * @return 结果
     */
    @Override
    public String importSensor(List<SysSensorVO> sensorList, Boolean isUpdateSupport)
    {
        if (StringUtils.isNull(sensorList) || sensorList.size() == 0)
        {
            throw new BusinessException("导入传感器数据不能为空！");
        }
        int successNum = 0;
        int failureNum = 0;
        StringBuilder successMsg = new StringBuilder();
        StringBuilder failureMsg = new StringBuilder();
        String operName = ShiroUtils.getUserEntity().getUserName();
        for (SysSensorVO sensor : sensorList)
        {
            try
            {
                if(StringUtils.isNull(sensor.getIMEI())){
                        break;
                }
                // 验证是否存在这个传感器
                SysDeptVO dept = generalDAO.queryObject("sysDeptDao.selectDeptBySensordeptId",sensor);
                SysSensorVO u = generalDAO.queryObject("sysSensorDao.selectSensorById",sensor);
                if (StringUtils.isNotNull(dept) && StringUtils.isNotEmpty(String.valueOf(sensor.getIMEI()))){
                    sensor.setDeptId(String.valueOf(dept.getDeptId()));
                }
                if (StringUtils.isNull(u))
                {
                    sensor.setCreateBy(ShiroUtils.getUserEntity().getUserName());
                    generalDAO.save("sysSensorDao.insertSensor",sensor);
                    successNum++;
                    successMsg.append("<br/>" + successNum + "、设备名称 " + sensor.getImeiName() + " 导入成功");
                }else if(isUpdateSupport){
                    sensor.setUpdateBy(ShiroUtils.getUserEntity().getUserName());
                    generalDAO.updateObject("sysSensorDao.updateSensor",sensor);
                    successNum++;
                    successMsg.append("<br/>" + successNum + "、设备名称 " + sensor.getImeiName() + " 已存在,更新成功");
                }
                else
                {
                    failureNum++;
                    failureMsg.append("<br/>" + failureNum + "、设备名称 " + sensor.getImeiName() + " 已存在");
                }
            }
            catch (Exception e)
            {
                failureNum++;
                String msg = "<br/>" + failureNum + "、设备名称 " + sensor.getImeiName() + " 导入失败：";
                failureMsg.append(msg + e.getMessage());
            }
        }
        if (failureNum > 0)
        {
            failureMsg.insert(0, "很抱歉，导入失败！共 " + failureNum + " 条数据格式不正确，错误如下：");
            //throw new BusinessException(failureMsg.toString());
            return failureMsg.toString();
        }
        else
        {
            successMsg.insert(0, "恭喜您，数据已全部导入成功！共 " + successNum + " 条，数据如下：");
            return successMsg.toString();
        }
    }

    /**
     * 查询全部警报详细信息在主页地图上显示
     *
     * @return 结果
     */
    @Override
    public String selectAlarmList()
    {
        Long deptId = ShiroUtils.getUserEntity().getDeptId();
        SysSensorVO sysSensorVO= new SysSensorVO();
        List<SysSensorVO> listSysSensorVO = new ArrayList<SysSensorVO>();
        if(deptId !=10L){
            SysDeptVO dept = new SysDeptVO();
            dept.setDeptId(deptId);
            SysDeptVO deptVO = generalDAO.queryObject("sysDeptDao.selectDeptById", dept);
            SysDeptVO sysDeptVO = new SysDeptVO();
            if(StringUtils.isNotNull(deptVO)  && deptVO.getParentId() != 0L){
                sysDeptVO.setDeptId(deptVO.getParentId());
            }else if(StringUtils.isNotNull(deptVO)  && deptVO.getParentId() == 0L){
                sysDeptVO.setDeptId(deptVO.getDeptId());
            }
            List<SysDeptVO> list = generalDAO.queryList("sysDeptDao.selectAlarmList", sysDeptVO);
            String sensorLocation ="";
            for(SysDeptVO deptEntry : list){
                SysSensorVO VO = new SysSensorVO();
                VO.setSensorLocation(deptEntry.getDeptName());
                List<SysSensorVO> listVO =  generalDAO.queryList("sysSensorDao.selectAlarmList",VO);
                listSysSensorVO.addAll(listVO);
            }
       }else{
            listSysSensorVO =  generalDAO.queryList("sysSensorDao.selectAlarmList",sysSensorVO);
        }
        StringBuilder alarmList = new StringBuilder();
          if(StringUtils.isNotNull(listSysSensorVO) && listSysSensorVO.size()>0){
              for(SysSensorVO sensor : listSysSensorVO){
                  alarmList.append(sensor.getXCoordinates()+","+sensor.getYCoordinates()+",<p style='font-size:16px; line-height:25px;'><a style='color:#333333; text-decoration:none'  target='_blank'>");
                  alarmList.append("设备类型："+sensor.getDeviceType()+"<br>");
                  alarmList.append("设备编号："+sensor.getIMEI()+"<br> ");
                  alarmList.append("设备名称："+sensor.getImeiName()+"<br>");
                  alarmList.append("安装位置："+sensor.getSensorLocation()+"<br>");
                  alarmList.append("设备状态："+sensor.getState()+"<br> ");
                  String  wUpdateTime = sensor.getwUpdateTime();
                  if(StringUtils.isNotNull(wUpdateTime)){
                      wUpdateTime = wUpdateTime.substring(0,wUpdateTime.length()-2);
                  }
                  alarmList.append("报警时间："+wUpdateTime+"<br>");
                  alarmList.append("在线状态："+sensor.getRunningState()+" </a></p>,../img/alarm.png,end");
                  String[] arr = alarmList.toString().split(",");
              }
          }
          if(alarmList.toString().length()>4){

              return alarmList.toString().substring(0,alarmList.toString().length()-4);
          }
        return alarmList.toString();

    }
}
