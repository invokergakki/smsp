package com.syn.smsp.vo;

import com.syn.smsp.util.importData.Excel;

import java.io.Serializable;
import java.util.Date;
import java.util.Map;

/**
 *  设备警报日志管理表
 * 
 * @author huby
 */
public class SysFaultLogVO implements Serializable
{
    private static final long serialVersionUID = 1L;

    private Long id;

    /** 单位id */
    private Long deptId;

    /** 传感器ID */
    private String IMEI;

    /** 传感器名称 */
    private String imeiName;

    /** 设备运行状态（0正常 1停止） */
    private String status;

    /** 离线时间 */
    private Date faultTime;

    /** 恢复时间 */
    private Date restoreTime;


    /** 请求参数 */
    private Map<String, Object> params;


    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

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

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Date getFaultTime() {
        return faultTime;
    }

    public void setFaultTime(Date faultTime) {
        this.faultTime = faultTime;
    }

    public Date getRestoreTime() {
        return restoreTime;
    }

    public void setRestoreTime(Date restoreTime) {
        this.restoreTime = restoreTime;
    }

    public Map<String, Object> getParams() {
        return params;
    }

    public void setParams(Map<String, Object> params) {
        this.params = params;
    }
}
