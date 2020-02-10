package com.syn.smsp.service.impl;

import com.syn.smsp.constant.Constant;
import com.syn.smsp.service.SysLogininforService;
import com.syn.smsp.toor.Convert;
import com.syn.smsp.util.GeneralDAO;
import com.syn.smsp.util.ShiroUtils;
import com.syn.smsp.vo.SysLogininforVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 系统访问日志情况信息 服务层处理
 *
 * @author huby
 * createDate  2019/5/31 0031  9:19
 */
@Service("dict")
public class SysLogininforServiceImpl  implements  SysLogininforService {

    @Autowired
    private GeneralDAO generalDAO;


    /**
     * 新增系统登录日志
     *
     * @param logininfor 访问日志对象
     */
    @Override
    public void insertLogininfor(SysLogininforVO logininfor)
    {
       // logininforMapper.insertLogininfor(logininfor);
        generalDAO.save("sysLogininforDao.insertLogininfor",logininfor);
    }

    /**
     * 查询系统登录日志集合
     *
     * @param logininfor 访问日志对象
     * @return 登录记录集合
     */
    @Override
    public List<SysLogininforVO> selectLogininforList(SysLogininforVO logininfor)
    {
        return generalDAO.queryList("sysLogininforDao.selectLogininforList",logininfor);
    }

    /**
     * 批量删除系统登录日志
     *
     * @param ids 需要删除的数据
     * @return
     */
    @Override
    public int deleteLogininforByIds(String ids)
    {
        return  generalDAO.deleteObject("sysLogininforDao.deleteLogininforByIds", Convert.toStrArray(ids));
    }

    /**
     * 清空系统登录日志
     */
    @Override
    public void cleanLogininfor(SysLogininforVO logininfor)
    {
        generalDAO.deleteObject("sysLogininforDao.cleanLogininfor",logininfor);
    }

}
