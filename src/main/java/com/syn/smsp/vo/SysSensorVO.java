package com.syn.smsp.vo;


import com.syn.smsp.util.importData.Excel;
import com.syn.smsp.util.importData.Excel.Type;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * 系统用户
 */
public class SysSensorVO extends BaseEntityVO{

    private Long id;

    /** 传感器ID */
    @Excel(name = "设备序号", prompt = "设备编号")
    private String IMEI;

    /** 传感器名称 */
    @Excel(name = "设备名称")
    private String imeiName;

    /** 设备名称 */
    private String facilityName;

    /** 电话 */
    @Excel(name = "手机号码")
    private String phone;

    /** 单位 */
    private String unit;

    /** 传感器账号 */
    private String sensorAccounts;

    /** 传感器密码 */
    private String sensorPassword;

    /** 设备状态（ 1：报警  2：静音 3：保留 4：低压 5：故障 6：保留 7：正常   8：其他 9：删除）） */
    @Excel(name = "设备状态")
    private String state;

    /** 设备运行状态（0正常 1停止） */
    private String runningState;

    /** 地址域 0x01 */
    @Excel(name = "地址域")
    private String masgID;

    /** 产商名称 SW */
    @Excel(name = "产商名称")
    private String manufacturer;

    /** 设备类型{
     0  水压表  1  液位表  2  烟雾报警器  3  燃气报警器  4  电气火灾探测器 5  消火栓 6  温湿度传感器 7  漏保插座
     8  漏电保护器 9  电器保护终端 10  水浸传感器 11  门窗传感器 12  故障电弧探测器 13  手动报警器 14  紧急报警按钮
     15  声光报警器
     } */
    @Excel(name = "设备类型")
    private String deviceType;

    /** IMSI 号 string 类型 */
    @Excel(name = "IMSI号")
    private String IMSI;

    /** 硬件版本号 string 类型 */
    @Excel(name = "硬件版本号")
    private String hardwareVersion;

    /** 固件版本号 string 类型 */
    @Excel(name = "固件版本号")
    private String firmwareVersion;

    /** 设备通信类型{ 0 - 电信NBIOT 1 - 移动NBIOT 2 - LORA 3 - GSM 4 -  WIFI } */
    private String sensorType;

    /** 维保(天数) */
    private Long maintenance;

    /** 心跳(分钟) */
    private Long heartbeat;

    /** 电量百分比 */
    private String batteryLevel;

    /** 离报警点的浓度百分比 */
    private String alarmLevel;

    /** 视频 */
    private String video;

    /** 设备安装地图坐标 */
    private String mapCoordinates;

    /** 设备安装地图X坐标 */
    private String XCoordinates;

    /** 设备安装地图Y坐标 */
    private String YCoordinates;

    /** 设备安装地址 */
    private String sensorLocation;

    /** 设备图片 */
    private String sensorPicture;

    /** 绑定用户Code */
    private String userId;

    /** 绑定deptID */
    @Excel(name = "部门名称")
    private String deptId;

    /** 部门名称 */
    private String deptName;

    /** 警报处理 */
    private String alarmResult;

    private String wUpdateTime;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getIMEI() {
        return IMEI;
    }

    public void setIMEI(String IMEI) {
        this.IMEI = IMEI;
    }

    public String getImeiName() {
        return imeiName;
    }

    public void setImeiName(String imeiName) {
        this.imeiName = imeiName;
    }

    public String getFacilityName() {
        return facilityName;
    }

    public void setFacilityName(String facilityName) {
        this.facilityName = facilityName;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getUnit() {
        return unit;
    }

    public void setUnit(String unit) {
        this.unit = unit;
    }

    public String getSensorAccounts() {
        return sensorAccounts;
    }

    public void setSensorAccounts(String sensorAccounts) {
        this.sensorAccounts = sensorAccounts;
    }

    public String getSensorPassword() {
        return sensorPassword;
    }

    public void setSensorPassword(String sensorPassword) {
        this.sensorPassword = sensorPassword;
    }

    public String getRunningState() {
        return runningState;
    }

    public void setRunningState(String runningState) {
        this.runningState = runningState;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getMasgID() {
        return masgID;
    }

    public void setMasgID(String masgID) {
        this.masgID = masgID;
    }

    public String getManufacturer() {
        return manufacturer;
    }

    public void setManufacturer(String manufacturer) {
        this.manufacturer = manufacturer;
    }

    public String getDeviceType() {
        return deviceType;
    }

    public void setDeviceType(String deviceType) {
        this.deviceType = deviceType;
    }

    public String getIMSI() {
        return IMSI;
    }

    public void setIMSI(String IMSI) {
        this.IMSI = IMSI;
    }

    public String getHardwareVersion() {
        return hardwareVersion;
    }

    public void setHardwareVersion(String hardwareVersion) {
        this.hardwareVersion = hardwareVersion;
    }

    public String getFirmwareVersion() {
        return firmwareVersion;
    }

    public void setFirmwareVersion(String firmwareVersion) {
        this.firmwareVersion = firmwareVersion;
    }

    public String getSensorType() {
        return sensorType;
    }

    public void setSensorType(String sensorType) {
        this.sensorType = sensorType;
    }

    public Long getMaintenance() {
        return maintenance;
    }

    public void setMaintenance(Long maintenance) {
        this.maintenance = maintenance;
    }

    public Long getHeartbeat() {
        return heartbeat;
    }

    public void setHeartbeat(Long heartbeat) {
        this.heartbeat = heartbeat;
    }

    public String getBatteryLevel() {
        return batteryLevel;
    }

    public void setBatteryLevel(String batteryLevel) {
        this.batteryLevel = batteryLevel;
    }

    public String getAlarmLevel() {
        return alarmLevel;
    }

    public void setAlarmLevel(String alarmLevel) {
        this.alarmLevel = alarmLevel;
    }

    public String getVideo() {
        return video;
    }

    public void setVideo(String video) {
        this.video = video;
    }

    public String getMapCoordinates() {
        return mapCoordinates;
    }

    public void setMapCoordinates(String mapCoordinates) {
        this.mapCoordinates = mapCoordinates;
    }

    public String getXCoordinates() {
        return XCoordinates;
    }

    public void setXCoordinates(String XCoordinates) {
        this.XCoordinates = XCoordinates;
    }

    public String getYCoordinates() {
        return YCoordinates;
    }

    public void setYCoordinates(String YCoordinates) {
        this.YCoordinates = YCoordinates;
    }

    public String getSensorLocation() {
        return sensorLocation;
    }

    public void setSensorLocation(String sensorLocation) {
        this.sensorLocation = sensorLocation;
    }

    public String getSensorPicture() {
        return sensorPicture;
    }

    public void setSensorPicture(String sensorPicture) {
        this.sensorPicture = sensorPicture;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getDeptId() {
        return deptId;
    }

    public void setDeptId(String deptId) {
        this.deptId = deptId;
    }

    public String getDeptName() {
        return deptName;
    }

    public void setDeptName(String deptName) {
        this.deptName = deptName;
    }

    public String getAlarmResult() {
        return alarmResult;
    }

    public void setAlarmResult(String alarmResult) {
        this.alarmResult = alarmResult;
    }

    public String getwUpdateTime() {
        return wUpdateTime;
    }

    public void setwUpdateTime(String wUpdateTime) {
        this.wUpdateTime = wUpdateTime;
    }
}
