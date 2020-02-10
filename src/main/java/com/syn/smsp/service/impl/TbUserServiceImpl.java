package com.syn.smsp.service.impl;

import com.syn.smsp.config.UserConstants;
import com.syn.smsp.service.SysUserService;
import com.syn.smsp.service.TbUserService;
import com.syn.smsp.toor.Constants;
import com.syn.smsp.toor.Convert;
import com.syn.smsp.toor.StringUtils;
import com.syn.smsp.util.GeneralDAO;
import com.syn.smsp.util.ShiroUtils;
import com.syn.smsp.util.shiro.exception.BusinessException;
import com.syn.smsp.vo.SysUserRoleVO;
import com.syn.smsp.vo.SysUserVO;
import com.syn.smsp.vo.TbUserVO;
import org.apache.shiro.crypto.hash.Sha256Hash;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;


/**
 * 系统用户
 */
@Service
public class TbUserServiceImpl implements TbUserService {

    @Autowired
    private GeneralDAO generalDAO;

    /**
     * 根据条件分页查询用户列表
     *
     * @param user 用户信息
     * @return 用户信息集合信息
     */
    public List<TbUserVO> selectUserList(TbUserVO user)
    {
        // 生成数据权限过滤条件
        return generalDAO.queryList("tbUserDao.selectTbUserList",user);
    }

    /**
     * 新增保存用户信息
     *
     * @param user 用户信息
     * @return 结果
     */
    public int insertUser(TbUserVO user)
    {
        return  generalDAO.save("tbUserDao.insertTbUser",user);
    }

    /**
     * 通过用户ID查询用户
     *
     * @param user 用户信息
     * @return 用户对象信息
     */
    public SysUserVO selectUserById(TbUserVO user)
    {
        return generalDAO.queryObject("tbUserDao.selectTbUserList",user);
    }

    /**
     * 通过用户ID查询用户
     *
     * @param token  信息
     * @return 用户对象信息
     */
    public boolean selectUserByToken(String token)
    {
        TbUserVO user = new TbUserVO();
        user.setToken(token);
        TbUserVO tbUser = generalDAO.queryObject("tbUserDao.selectTbUserList",user);
        return StringUtils.isNotNull(tbUser);
    }

    /**
     * 修改用户个人详细信息
     *
     * @param user 用户信息
     * @return 结果
     */
    public int updateUserInfo(TbUserVO user)
    {
        return generalDAO.updateObject("tbUserDao.updateTbUser",user);
    }
}
