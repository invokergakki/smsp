package com.syn.smsp.service;

import com.syn.smsp.vo.SensorVO;
import com.syn.smsp.vo.SysSensorVO;

import java.util.List;


/**
 * 传感器处理
 * 
 */
public interface SysSensorService {

	/**
	 * 根据条件分页查询传感器列表
	 *
	 * @param sensor 传感器信息
	 * @return 传感器信息集合信息
	 */
	List<SysSensorVO> selectSensorList(SysSensorVO sensor);

	/**
	 * 保存传感器信息
	 *
	 * @param sensor 传感器信息
	 * @return 结果
	 */
	int insertSensor(SysSensorVO sensor);

	/**
	 * 设备注册数据推送接口
	 *
	 *@param sensor
	 * @return 结果
	 */
	boolean registerInsertSensor(SensorVO sensor);

	/**
	 * 通过传感器ID查询传感器
	 *
	 * @param IMEI 传感器ID
	 * @return 传感器对象信息
	 */
	SysSensorVO selectSensorById(String IMEI);


	/**
	 * 修改传感器详细信息
	 *
	 * @param sensor 传感器信息
	 * @return 结果
	 */
	int updateSensorInfo(SysSensorVO sensor);
	/**
	 * 校验用户名称、手机号码、email是否唯一
	 *
	 * @param sensor 用户名称、手机号码、email
	 * @return 结果
	 */
	String checkMessageUnique(SysSensorVO sensor);
	/**
	 * 批量删除传感器信息
	 *
	 * @param ids 需要删除的数据ID
	 * @return 结果
	 * @throws Exception 异常
	 */
	int deleteSensorByIds(String ids) ;

	/**
	 * 导入传感器数据
	 *
	 * @param sensorList 传感器数据列表
	 * @param isUpdateSupport 是否更新支持，如果已存在，则进行更新数据
	 * @return 结果
	 */
	String importSensor(List<SysSensorVO> sensorList, Boolean isUpdateSupport);


	/**
	 * 查询全部警报详细信息在主页地图上显示
	 *
	 * @return 结果
	 */
	String selectAlarmList();
}
