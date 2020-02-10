package com.syn.smsp.vo;

import com.fasterxml.jackson.annotation.JsonFormat;

import java.io.Serializable;
import java.util.Date;
import java.util.Map;

/**
 * 报警管理
 */
public class WarningVO implements Serializable {

    private Long id;

    /** 单位id */
    private Long deptId;

    /** 单位名称 */
    private String deptName;

    /** 设备编号 */
    private String facilityCode;
    private String IMEI;

    /** 设备名称 */
    private String facilityName;

    /** 报警类型 */
    private String warningType;
    private String warningCode;

    /** 报警处理 */
    private String warningDis;

    /** 安装位置 */
    private String sensorLocation;

    /** 安装位置 */
    private int count;

    /** 处理状态 */
    private String status;

    /** 创建时间 */
//    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date createTime;

    /** 更新时间 */
//    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date updateTime;

    /** 请求参数 */
    private Map<String, Object> params;

    //报警数量
    private  String callNum;
    //故障数量
    private  String faultNum;
    //正常数量
    private  String normalNum;
    //抵压数量
    private  String lowtensionNum;
    //在线数量
    private  String onlineNum;
    //拆卸数量
    private  String teardownNum;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getDeptId() {
        return deptId;
    }

    public void setDeptId(Long deptId) {
        this.deptId = deptId;
    }

    public String getDeptName() {
        return deptName;
    }

    public void setDeptName(String deptName) {
        this.deptName = deptName;
    }

    public String getFacilityCode() {
        return facilityCode;
    }

    public void setFacilityCode(String facilityCode) {
        this.facilityCode = facilityCode;
    }

    public String getIMEI() {
        return IMEI;
    }

    public void setIMEI(String IMEI) {
        this.IMEI = IMEI;
    }

    public String getFacilityName() {
        return facilityName;
    }

    public void setFacilityName(String facilityName) {
        this.facilityName = facilityName;
    }

    public String getWarningType() {
        return warningType;
    }

    public void setWarningType(String warningType) {
        this.warningType = warningType;
    }

    public String getWarningCode() {
        return warningCode;
    }

    public void setWarningCode(String warningCode) {
        this.warningCode = warningCode;
    }

    public String getWarningDis() {
        return warningDis;
    }

    public void setWarningDis(String warningDis) {
        this.warningDis = warningDis;
    }

    public String getSensorLocation() {
        return sensorLocation;
    }

    public void setSensorLocation(String sensorLocation) {
        this.sensorLocation = sensorLocation;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    public Map<String, Object> getParams() {
        return params;
    }

    public void setParams(Map<String, Object> params) {
        this.params = params;
    }

    public String getCallNum() {
        return callNum;
    }

    public void setCallNum(String callNum) {
        this.callNum = callNum;
    }

    public String getFaultNum() {
        return faultNum;
    }

    public void setFaultNum(String faultNum) {
        this.faultNum = faultNum;
    }

    public String getNormalNum() {
        return normalNum;
    }

    public void setNormalNum(String normalNum) {
        this.normalNum = normalNum;
    }

    public String getLowtensionNum() {
        return lowtensionNum;
    }

    public void setLowtensionNum(String lowtensionNum) {
        this.lowtensionNum = lowtensionNum;
    }

    public String getOnlineNum() {
        return onlineNum;
    }

    public void setOnlineNum(String onlineNum) {
        this.onlineNum = onlineNum;
    }

    public String getTeardownNum() {
        return teardownNum;
    }

    public void setTeardownNum(String teardownNum) {
        this.teardownNum = teardownNum;
    }
}
