package com.syn.smsp.service.impl;
import com.syn.smsp.config.UserConstants;
import com.syn.smsp.constant.Constant;
import com.syn.smsp.service.SysUserService;
import com.syn.smsp.toor.Constants;
import com.syn.smsp.toor.Convert;
import com.syn.smsp.util.GeneralDAO;
import com.syn.smsp.toor.StringUtils;
import com.syn.smsp.util.ShiroUtils;
import com.syn.smsp.util.shiro.exception.BusinessException;
import com.syn.smsp.vo.SysUserRoleVO;
import com.syn.smsp.vo.SysUserVO;
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
public class SysUserServiceImpl implements SysUserService {
    @Autowired
    private GeneralDAO generalDAO;

    public static final String USER_PASSWORD = "12345678";

    @Override
    public List<String> queryAllPerms(Long userId) {
        return generalDAO.queryForList("sysUserDao.queryAllPerms", userId);
    }

    @Override
    public SysUserVO queryByUserName(String username) {
        return generalDAO.queryObject("sysUserDao.queryByUserName", username);
    }

    /**
     * 根据条件分页查询用户列表
     *
     * @param user 用户信息
     * @return 用户信息集合信息
     */
    @Override
    public List<SysUserVO> selectUserList(SysUserVO user)
    {
        // 生成数据权限过滤条件
        return generalDAO.queryList("sysUserDao.selectUserList",user);
    }

    /**
     * 新增保存用户信息
     *
     * @param user 用户信息
     * @return 结果
     */
    @Override
    @Transactional
    public int insertUser(SysUserVO user)
    {
        user.randomSalt();
        user.setPassword(new Sha256Hash(user.getPassword()).toHex());
        user.setCreateBy(ShiroUtils.getUserEntity().getUserName());
        // 新增用户信息
        generalDAO.save("sysUserDao.insertUser",user);
        int rows = 1;
        // 新增用户与角色管理
        return insertUserRole(user);
    }

    /**
     * 新增用户角色信息
     *
     * @param user 用户对象
     */
    public int insertUserRole(SysUserVO user)
    {
        Long[] roles = user.getRoleIds();
        if (StringUtils.isNotNull(roles))
        {
            // 新增用户与角色管理
            List<SysUserRoleVO> list = new ArrayList<SysUserRoleVO>();
            for (Long roleId : user.getRoleIds())
            {
                if(StringUtils.isNotNull(roleId)){
                    SysUserRoleVO ur = new SysUserRoleVO();
                    ur.setUserId(user.getUserId());
                    ur.setRoleId(roleId);
                    list.add(ur);
                }
            }
            if (list.size() > 0)
            {
              return  generalDAO.save("sysUserRoleDao.batchUserRole",list);
            }
        }
        return 0;
    }

    /**
     * 通过用户ID查询用户
     *
     * @param userId 用户ID
     * @return 用户对象信息
     */
    @Override
    public SysUserVO selectUserById(Long userId)
    {
        SysUserVO user = new SysUserVO();
        user.setUserId(userId);
        return generalDAO.queryObject("sysUserDao.selectUserById",user);
    }

    /**
     * 修改保存用户信息
     *
     * @param user 用户信息
     * @return 结果
     */
    @Override
    @Transactional
    public int updateUser(SysUserVO user)
    {
        Long userId = user.getUserId();
        user.setUpdateBy(ShiroUtils.getUserEntity().getUserName());
        // 删除用户与角色关联
        int deleteCount = generalDAO.deleteObject("sysUserRoleDao.delete",userId.intValue());
        // 新增用户与角色管理
        insertUserRole(user);
        // 删除用户与岗位关联
        return generalDAO.updateObject("sysUserDao.updateUser",user);
    }
    /**
     * 修改账户状态
     *
     * @param user 用户信息
     * @return 结果
     */
    @Override
    @Transactional
    public int updateUserStatus(SysUserVO user)
    {
        return generalDAO.updateObject("sysUserDao.updateUser",user);
    }
    /**
     * 修改用户密码
     *
     * @param user 用户信息
     * @return 结果
     */
    @Override
    public int resetUserPwd(SysUserVO user)
    {
        user.randomSalt();
        user.setPassword(new Sha256Hash(user.getPassword()).toHex());
        return updateUserInfo(user);
    }
    /**
     * 修改用户个人详细信息
     *
     * @param user 用户信息
     * @return 结果
     */
    @Override
    public int updateUserInfo(SysUserVO user)
    {
        try{
            generalDAO.updateObject("sysUserDao.updateUser",user);
            return Constants.RESULT;
        }catch (Exception e){
            e.printStackTrace();
            return Constants.FAIL;
        }
    }

    /**
     * 批量删除用户信息
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteUserByIds(String ids) throws BusinessException
    {
        Long[] userIds = Convert.toLongArray(ids);
        for (Long userId : userIds)
        {
            if (SysUserVO.isAdmin(userId))
            {
                throw new BusinessException("不允许删除超级管理员用户");
            }
        }
        generalDAO.deleteObject("sysUserDao.deleteRoleByIds",userIds);
        return userIds.length;
    }

    /**
     * 校验用户名称是否唯一
     *
     * @param user 用户信息
     * @return
     */
    @Override
    public String checkMessageUnique(SysUserVO user)
    {
        Long userId = StringUtils.isNull(user.getUserId()) ? -1L : user.getUserId();
        SysUserVO info = generalDAO.queryObject("sysUserDao.checkMessageUnique",user);
        if (StringUtils.isNotNull(info) && info.getUserId().longValue() != userId.longValue())
        {
            return UserConstants.USER_PHONE_NOT_UNIQUE;
        }
        return UserConstants.USER_PHONE_UNIQUE;
    }

    /**
     * 校验用户密码是否存在
     *
     * @param user
     * @return
     */
    @Override
    public String checkPasswordUnique(SysUserVO user)
    {
        Long userId = StringUtils.isNull(user.getUserId()) ? -1L : user.getUserId();
        SysUserVO info = generalDAO.queryObject("sysUserDao.checkMessageUnique",user);
        if (StringUtils.isNotNull(info))
        {
            return UserConstants.USER_PHONE_NOT_UNIQUE;
        }
        return UserConstants.USER_PHONE_UNIQUE;
    }

}
