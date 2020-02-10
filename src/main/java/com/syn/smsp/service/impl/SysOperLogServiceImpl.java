package com.syn.smsp.service.impl;

import com.syn.smsp.constant.Constant;
import com.syn.smsp.service.SysOperLogService;
import com.syn.smsp.toor.Convert;
import com.syn.smsp.util.GeneralDAO;
import com.syn.smsp.util.ShiroUtils;
import com.syn.smsp.vo.SysOperLogVO;
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
public class SysOperLogServiceImpl  implements SysOperLogService {

    @Autowired
    private GeneralDAO generalDAO;

    /**
     * 新增操作日志
     *
     * @param operLog 操作日志对象
     */
    @Override
    public void insertOperlog(SysOperLogVO operLog)
    {
       // operLogMapper.insertOperlog(operLog);
        generalDAO.save("sysOperLogDao.insertOperlog",operLog);
    }

    /**
     * 查询系统操作日志集合
     *
     * @param operLog 操作日志对象
     * @return 操作日志集合
     */
    @Override
    public List<SysOperLogVO> selectOperLogList(SysOperLogVO operLog)
    {
        return generalDAO.queryList("sysOperLogDao.selectOperLogList",operLog);
    }

    /**
     * 批量删除系统操作日志
     *
     * @param ids 需要删除的数据
     * @return
     */
    @Override
    public int deleteOperLogByIds(String ids)
    {
      return generalDAO.deleteObject("sysOperLogDao.deleteOperLogByIds", Convert.toStrArray(ids));
    }

    /**
     * 查询操作日志详细
     *
     * @param operId 操作ID
     * @return 操作日志对象
     */
    @Override
    public SysOperLogVO selectOperLogById(Long operId)
    {
        SysOperLogVO operLog = new SysOperLogVO();
        operLog.setOperId(operId);
        return  generalDAO.queryObject("sysOperLogDao.selectOperLogById",operLog);
    }

    /**
     * 清空操作日志
     */
    @Override
    public void cleanOperLog(SysOperLogVO operLog)
    {
        generalDAO.deleteObject("sysOperLogDao.cleanOperLog",operLog);
    }
}
