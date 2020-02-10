package com.syn.smsp.vo;

import com.syn.smsp.util.importData.Excel;

import java.io.Serializable;

/**
 *   设备注册数据推送接口
 *
 * @author huby
 * createDate  2019/6/17  15:39
 */
public class SensorVO  implements Serializable {

    private static final long serialVersionUID = 1L;

    /** 地址域 0x01 */
    private String masgID;

    /** 产商名称 SW */
    private String manufacturer;

    /** 设备类型{ 0x01:烟雾报警器 */
    private String deviceType;

    /** 传感器ID */
    private String IMEI;

    /** IMSI 号 string 类型 */
    private String IMSI;

    /** 硬件版本号 string 类型 */
    private String hardwareVersion;

    /** 固件版本号 string 类型 */
    private String firmwareVersion;

    public static long getSerialVersionUID() {
        return serialVersionUID;
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

    public String getIMEI() {
        return IMEI;
    }

    public void setIMEI(String IMEI) {
        this.IMEI = IMEI;
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
}
