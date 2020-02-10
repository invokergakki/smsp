package com.syn.smsp.service;

import com.syn.smsp.vo.SysOperLogVO;

import java.util.List;

/**
 * 操作日志 服务层处理
 *
 * @author huby
 * createDate  2019/5/31 0031  9:18
 */
public interface SysOperLogService {

    /**
     * 新增操作日志
     *
     * @param operLog 操作日志对象
     */
    void insertOperlog(SysOperLogVO operLog);

    /**
     * 查询系统操作日志集合
     *
     * @param operLog 操作日志对象
     * @return 操作日志集合
     */
    List<SysOperLogVO> selectOperLogList(SysOperLogVO operLog);

    /**
     * 批量删除系统操作日志
     *
     * @param ids 需要删除的数据
     * @return 结果
     */
    int deleteOperLogByIds(String ids);

    /**
     * 查询操作日志详细
     *
     * @param operId 操作ID
     * @return 操作日志对象
     */
    SysOperLogVO selectOperLogById(Long operId);

    /**
     * 清空操作日志
     */
    void cleanOperLog(SysOperLogVO operLog);

}
