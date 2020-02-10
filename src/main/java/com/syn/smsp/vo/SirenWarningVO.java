package com.syn.smsp.vo;

import java.io.Serializable;
import java.util.Date;

/**
 * 报警管理
 */
public class SirenWarningVO implements Serializable {

    /** 地址域 */
    private String masgId;

    /** RSRP 的绝对值 */
    private String RSRP;

    /** CSQ:0~99 */
    private String CSQ;

    /** 有符号数，单位 DB */
    private String SNR;

    /** 电量百分比 0~100 */
    private String batteryLevel;

    /**
     1：报警
     2：静音
     3：保留
     4：低压
     5：故障
     6：保留
     7：正常
     8: 设备收到单次静音指令
     9：设备收到连续静音指令
     10：拆卸报警
     11：拆卸恢复
     14：模拟报警
     其它保留 */
    private String alarmStatus;

    private String status;

    /** 离报警点的浓度百分比 0~100 */
    private String alarmLevel;

    /** IMEI 号"*/
    private String IMEI;

    /** 小区基站号长度 */
    private String cellIdLength;

    /** 小区基站号 */
    private String cellId;

    /**
     0x00:保留
     0x01:单次静音
     0x02:连续静音
     其它保留 */
    //@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private String command;

    /** 《userName-password 》MD5加密 */
    private String token;

    public String getMasgId() {
        return masgId;
    }

    public void setMasgId(String masgId) {
        this.masgId = masgId;
    }

    public String getRSRP() {
        return RSRP;
    }

    public void setRSRP(String RSRP) {
        this.RSRP = RSRP;
    }

    public String getCSQ() {
        return CSQ;
    }

    public void setCSQ(String CSQ) {
        this.CSQ = CSQ;
    }

    public String getSNR() {
        return SNR;
    }

    public void setSNR(String SNR) {
        this.SNR = SNR;
    }

    public String getBatteryLevel() {
        return batteryLevel;
    }

    public void setBatteryLevel(String batteryLevel) {
        this.batteryLevel = batteryLevel;
    }

    public String getAlarmStatus() {
        return alarmStatus;
    }

    public void setAlarmStatus(String alarmStatus) {
        this.alarmStatus = alarmStatus;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getAlarmLevel() {
        return alarmLevel;
    }

    public void setAlarmLevel(String alarmLevel) {
        this.alarmLevel = alarmLevel;
    }

    public String getIMEI() {
        return IMEI;
    }

    public void setIMEI(String IMEI) {
        this.IMEI = IMEI;
    }

    public String getCellIdLength() {
        return cellIdLength;
    }

    public void setCellIdLength(String cellIdLength) {
        this.cellIdLength = cellIdLength;
    }

    public String getCellId() {
        return cellId;
    }

    public void setCellId(String cellId) {
        this.cellId = cellId;
    }

    public String getCommand() {
        return command;
    }

    public void setCommand(String command) {
        this.command = command;
    }

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }
}
