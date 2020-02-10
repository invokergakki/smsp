package com.syn.smsp.service.impl;

import com.syn.smsp.config.UserConstants;
import com.syn.smsp.constant.Constant;
import com.syn.smsp.service.SysRoleMenuService;
import com.syn.smsp.service.SysRoleService;
import com.syn.smsp.service.SysUserService;
import com.syn.smsp.toor.Constants;
import com.syn.smsp.toor.Convert;
import com.syn.smsp.toor.StringUtils;
import com.syn.smsp.util.GeneralDAO;
import com.syn.smsp.util.ShiroUtils;
import com.syn.smsp.util.shiro.exception.BusinessException;
import com.syn.smsp.vo.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;


/**
 * 角色
 * 
 */
@Service
public class SysRoleServiceImpl implements SysRoleService {
	@Autowired
	private SysRoleMenuService sysRoleMenuService;
	@Autowired
	private SysUserService sysUserService;
	@Autowired
	private GeneralDAO generalDAO;

	@Override
	public List<SysRoleVO> queryRoleList(SysRoleVO role) {
		Long userId = ShiroUtils.getUserEntity().getUserId();
		if(!userId.equals(Constant.super_admin)){
			role.setSearchValue(userId.toString());
		}
		return generalDAO.queryList("sysRoleDao.queryRoleList",role);
	}

	/**
	 * 新增保存角色信息
	 *
	 * @param role 角色信息
	 * @return 结果
	 */
	@Override
	@Transactional
	public int insertRole(SysRoleVO role)
	{
		role.setCreateBy(ShiroUtils.getUserEntity().getUserName());
		generalDAO.save("sysRoleDao.insertRole",role);
		// 新增角色信息
		return insertRoleMenu(role);
	}
	@Override
	public SysRoleVO selectRoleById(SysRoleVO role)
	{
		return generalDAO.queryObject("sysRoleDao.selectRoleById", role);
	}

	/**
	 * 修改保存角色信息
	 *
	 * @param role 角色信息
	 * @return 结果
	 */
	@Override
	@Transactional
	public int updateRole(SysRoleVO role)
	{
		role.setUpdateBy(ShiroUtils.getUserEntity().getUserName());
		// 修改角色信息
		generalDAO.updateObject("sysRoleDao.updateRole", role);
		// 删除角色与菜单关联
		int roleId=role.getRoleId().intValue();
		generalDAO.deleteObject("sysRoleMenuDao.deleteRoleMenuByRoleId", roleId);
		return insertRoleMenu(role);
	}
	/**
	 * 新增角色菜单信息
	 *
	 * @param role 角色对象
	 */
	public int insertRoleMenu(SysRoleVO role)
	{
		int rows = 1;
		// 新增用户与角色管理
		List<SysRoleMenuVO> list = new ArrayList<SysRoleMenuVO>();
		for (Long menuId : role.getMenuIds())
		{
			SysRoleMenuVO rm = new SysRoleMenuVO();
			rm.setRoleId(role.getRoleId());
			rm.setMenuId(menuId);
			list.add(rm);
		}
		if (list.size() > 0)
		{
			generalDAO.batchInsert("sysRoleMenuDao.batchRoleMenu", list);
			rows = list.size();
		}
		return rows;
	}
	/**
	 * 修改数据权限信息
	 *
	 * @param role 角色信息
	 * @return 结果
	 */
	@Override
	@Transactional
	public int authDataScope(SysRoleVO role)
	{
		role.setUpdateBy(ShiroUtils.getUserEntity().getUserName());
		// 修改角色信息
		generalDAO.updateObject("sysRoleDao.updateRole", role);
		// 删除角色与部门关联
		int roleId=role.getRoleId().intValue();
		generalDAO.deleteObject("sysRoleDeptDao.deleteRoleDeptByRoleId", roleId);
		return insertRoleDept(role);
	}
	/**
	 * 新增角色部门信息(数据权限)
	 *
	 * @param role 角色对象
	 */
	public int insertRoleDept(SysRoleVO role)
	{
		int rows = 1;
		// 新增角色与部门（数据权限）管理
		List<SysRoleDeptVO> list = new ArrayList<SysRoleDeptVO>();
		for (Long deptId : role.getDeptIds())
		{
			SysRoleDeptVO rd = new SysRoleDeptVO();
			rd.setRoleId(role.getRoleId());
			rd.setDeptId(deptId);
			list.add(rd);
		}
		if (list.size() > 0)
		{
			generalDAO.batchInsert("sysRoleDeptDao.batchRoleDept", list);
			rows = list.size();
		}
		return rows;
	}

	/**
	 * 批量删除角色信息
	 *
	 * @param ids 需要删除的数据ID
	 * @throws Exception
	 */
	@Override
	public int deleteRoleByIds(String ids) throws BusinessException
	{
		Long[] roleIds = Convert.toLongArray(ids);
		for (Long roleId : roleIds)
		{
			SysRoleVO roleVO = new SysRoleVO();
			roleVO.setRoleId(roleId);
			SysRoleVO role = selectRoleById(roleVO);
			if (countUserRoleByRoleId(roleId) > 0)
			{
				throw new BusinessException(String.format("%1$s已分配,不能删除", role.getRoleName()));
			}
		}
		return	generalDAO.deleteObject("sysRoleDao.deleteRoleByIds",roleIds);
	}
	/**
	 * 通过角色ID查询角色使用数量
	 *
	 * @param roleId 角色ID
	 * @return 结果
	 */
	@Override
	public int countUserRoleByRoleId(Long roleId)
	{
		SysUserRoleVO userRole = new SysUserRoleVO();
		userRole.setRoleId(roleId);
		List<SysUserRoleVO> list = generalDAO.queryList("sysUserRoleDao.countUserRoleByRoleId",userRole);
		if(StringUtils.isNull(list)){
			return Constants.FAIL;
		}else{
			return list.size();
		}
	}

	/**
	 * 校验角色名称是否唯一
	 *
	 * @param role 角色信息
	 * @return 结果
	 */
	@Override
	public String checkRoleNameUnique(SysRoleVO role)
	{
		Long roleId = StringUtils.isNull(role.getRoleId()) ? -1L : role.getRoleId();
		SysRoleVO info = generalDAO.queryObject("sysRoleDao.selectRoleById", role);
		if (StringUtils.isNotNull(info) && info.getRoleId().longValue() != roleId.longValue())
		{
			return UserConstants.ROLE_NAME_NOT_UNIQUE;
		}
		return UserConstants.ROLE_NAME_UNIQUE;
	}

	/**
	 * 校验角色权限是否唯一
	 *
	 * @param role 角色信息
	 * @return 结果
	 */
	@Override
	public String checkRoleKeyUnique(SysRoleVO role)
	{
		Long roleId = StringUtils.isNull(role.getRoleId()) ? -1L : role.getRoleId();
		SysRoleVO info = generalDAO.queryObject("sysRoleDao.selectRoleById", role);
		if (StringUtils.isNotNull(info) && info.getRoleId().longValue() != roleId.longValue())
		{
			return UserConstants.ROLE_KEY_NOT_UNIQUE;
		}
		return UserConstants.ROLE_KEY_UNIQUE;
	}

	/**
	 * 角色状态修改
	 *
	 * @param role 角色信息
	 * @return 结果
	 */
	@Override
	public int changeStatus(SysRoleVO role)
	{
		return generalDAO.updateObject("sysRoleDao.updateRole",role);
	}

	/**
	 * 查询所有角色
	 *
	 * @return 角色列表
	 */
	@Override
	public List<SysRoleVO> selectRoleAll()
	{
		 SysRoleVO role = new SysRoleVO();
		 return generalDAO.queryList("sysRoleDao.queryList",role);
	}

	/**
	 * 根据用户ID查询角色
	 *
	 * @param userId 用户ID
	 * @return 角色列表
	 */
	@Override
	public List<SysRoleVO> selectRolesByUserId(Long userId)
	{
		SysUserVO user = new SysUserVO();
		user.setUserId(userId);
		List<SysRoleVO> userRoles = generalDAO.queryList("sysRoleDao.selectRolesByUserId",user);
	   	List<SysRoleVO> roles = selectRoleAll();
		for (SysRoleVO role : roles)
		{
			for (SysRoleVO userRole : userRoles)
			{
				if (role.getRoleId().longValue() == userRole.getRoleId().longValue())
				{
					role.setFlag(true);
					break;
				}
			}
		}
		return roles;
	}
	/**
	 * 查询用户所属角色组
	 *
	 * @param userId 用户ID
	 * @return 结果
	 */
	@Override
	public String selectUserRoleGroup(Long userId)
	{
		SysUserVO user = new SysUserVO();
		user.setUserId(userId);
		List<SysRoleVO> userRoles = generalDAO.queryList("sysRoleDao.selectRolesByUserId",user);
		StringBuffer idsStr = new StringBuffer();
		for (SysRoleVO role : userRoles)
		{
			idsStr.append(role.getRoleName()).append(",");
		}
		if (StringUtils.isNotEmpty(idsStr.toString()))
		{
			return idsStr.substring(0, idsStr.length() - 1);
		}
		return idsStr.toString();
	}

}
