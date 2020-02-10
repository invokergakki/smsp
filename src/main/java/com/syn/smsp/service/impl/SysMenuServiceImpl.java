package com.syn.smsp.service.impl;

import com.syn.smsp.constant.Constant;
import com.syn.smsp.service.SysMenuService;
import com.syn.smsp.service.SysUserService;
import com.syn.smsp.toor.Constants;
import com.syn.smsp.util.GeneralDAO;
import com.syn.smsp.util.ShiroUtils;
import com.syn.smsp.util.TreeUtils;
import com.syn.smsp.vo.*;
import com.syn.smsp.toor.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;


@Service
public class SysMenuServiceImpl implements SysMenuService {

	@Autowired
	private GeneralDAO generalDAO;
	@Autowired
	private SysUserService sysUserService;



	/**
	 * 根据用户查询菜单
	 *
	 * @param user 用户信息
	 * @return 菜单列表
	 */
	@Override
	public List<SysMenuVO> selectMenusByUser(SysUserVO user) {
		List<SysMenuVO> menus = generalDAO.queryList("sysMenuDao.queryMenusByUser",user);
		return TreeUtils.getChildPerms(menus, 0);
	}

	@Override
	public List<SysMenuVO> queryListParentId(Long parentId, List<Long> menuIdList) {
		List<SysMenuVO> menuList = generalDAO.queryForList("sysMenuDao.queryListParentId",parentId);
		if(menuIdList == null){
			return menuList;
		}
		
		List<SysMenuVO> userMenuList = new ArrayList<>();
		for(SysMenuVO menu : menuList){
			if(menuIdList.contains(menu.getMenuId())){
				userMenuList.add(menu);
			}
		}
		return userMenuList;
	}

	@Override
	public Set<String> getUserPermissions(long userId) {
		List<String> permsList;

		//系统管理员，拥有最高权限
		if(userId == 1){
			List<SysMenuVO> menuList = queryMenuList(new HashMap<>());
			permsList = new ArrayList<>(menuList.size());
			for(SysMenuVO menu : menuList){
				permsList.add(menu.getPerms());
			}
		}else{
			permsList = sysUserService.queryAllPerms(userId);
		}

		//用户权限列表
		Set<String> permsSet = new HashSet<String>();
		for(String perms : permsList){
			if(StringUtils.isBlank(perms)){
				continue;
			}
			permsSet.addAll(Arrays.asList(perms.trim().split(",")));
		}
		return permsSet;
	}
	

	@Override
	public List<SysMenuVO> queryMenuList(Map<String, Object> map) {
		return generalDAO.queryForList("sysMenuDao.queryList",map);
	}

	@Override
	public List<SysMenuVO> queryMenuList(SysMenuVO menu) {
		SysUserVO user = ShiroUtils.getUserEntity();
		menu.setCreateBy(String.valueOf(user.getUserId()));
		return generalDAO.queryList("sysMenuDao.selectMenuList",menu);
	}



	/**
	 * 查询子菜单数量
	 *
	 * @param parentId 菜单ID
	 * @return 结果
	 */
	@Override
	public int selectCountMenuByParentId(Long parentId)
	{
		SysMenuVO menuVO = new SysMenuVO();
		menuVO.setParentId(parentId);
		List<SysMenuVO> sysMenuVO  = generalDAO.queryList("sysMenuDao.selectCountMenuByParentId",menuVO);
		if(sysMenuVO.size()>0){
		   return  sysMenuVO.size();
		}
	    return Constants.FAIL;
	}
	/**
	 * 查询菜单使用数量
	 *
	 * @param menuId 菜单ID
	 * @return 结果
	 */
	@Override
	public int selectCountRoleMenuByMenuId(Long menuId)
	{
		SysRoleMenuVO role = new SysRoleMenuVO();
		role.setMenuId(menuId);
		List<SysRoleMenuVO> sysRoleMenuVO = generalDAO.queryList("sysMenuDao.selectCountRoleMenuByMenuId",role);
		if(sysRoleMenuVO.size()>0){
		  return  sysRoleMenuVO.size();
		}
		return  Constants.FAIL;
	}
	/**
	 * 删除菜单管理信息
	 *
	 * @param menuId 菜单ID
	 * @return 结果
	 */
	@Override
	public int deleteMenuById(Long menuId)
	{
	  int deptId=menuId.intValue();
	  return generalDAO.deleteObject("sysMenuDao.remove",deptId);
	}
	/**
	 * 根据菜单ID查询信息
	 *
	 * @param menuId 菜单ID
	 * @return 菜单信息
	 */
	@Override
	public SysMenuVO selectMenuById(Long menuId)
	{
		SysMenuVO sysMenuVO = new SysMenuVO();
		sysMenuVO.setMenuId(menuId);
		return  generalDAO.queryObject("sysMenuDao.selectMenuById",sysMenuVO);
	}
	/**
	 * 修改保存菜单信息
	 *
	 * @param menu 菜单信息
	 * @return 结果
	 */
	@Override
	public int updateMenu(SysMenuVO menu)
	{
		menu.setUpdateBy(ShiroUtils.getUserEntity().getUserName());
		return generalDAO.updateObject("sysMenuDao.updateMenu",menu);
	}
	/**
	 * 新增保存菜单信息
	 *
	 * @param menu 菜单信息
	 * @return 结果
	 */
	@Override
	public int insertMenu(SysMenuVO menu)
	{
		menu.setCreateBy(ShiroUtils.getUserEntity().getUserName());
	   return generalDAO.save("sysMenuDao.save", menu);
	}
	/**
	 * 校验菜单名称是否唯一
	 *
	 * @param menu 菜单信息
	 * @return 结果
	 */
	@Override
	public SysMenuVO checkMenuNameUnique(SysMenuVO menu)
	{
		return generalDAO.queryObject("sysMenuDao.checkMenuNameUnique", menu);
	}

	/**
	 * 根据角色ID查询菜单
	 *
	 * @param role 角色对象
	 * @return 菜单列表
	 */
	@Override
	public List<Ztree> roleMenuTreeData(SysRoleVO role)
	{
		Long roleId = role.getRoleId();
		List<Ztree> ztrees = new ArrayList<Ztree>();
		SysMenuVO menu = new SysMenuVO();
		SysUserVO user = ShiroUtils.getUserEntity();
		menu.setCreateBy(String.valueOf(user.getUserId()));
		List<SysMenuVO> menuList = generalDAO.queryList("sysMenuDao.selectMenuList", menu);
		if (StringUtils.isNotNull(roleId))
		{
			List<String> roleMenuList = generalDAO.queryList("sysMenuDao.selectMenuTree", roleId.intValue());
			ztrees = initZtree(menuList, roleMenuList, true);
		}
		else
		{
			ztrees = initZtree(menuList, null, true);
		}
		return ztrees;
	}

	/**
	 * 对象转菜单树
	 *
	 * @param menuList 菜单列表
	 * @param roleMenuList 角色已存在菜单列表
	 * @param permsFlag 是否需要显示权限标识
	 * @return 树结构列表
	 */
	public List<Ztree> initZtree(List<SysMenuVO> menuList, List<String> roleMenuList, boolean permsFlag)
	{
		List<Ztree> ztrees = new ArrayList<Ztree>();
		boolean isCheck = StringUtils.isNotNull(roleMenuList);
		for (SysMenuVO menu : menuList)
		{
			Ztree ztree = new Ztree();
			ztree.setId(menu.getMenuId());
			ztree.setpId(menu.getParentId());
			ztree.setName(transMenuName(menu, roleMenuList, permsFlag));
			ztree.setTitle(menu.getMenuName());
			if (isCheck)
			{
				ztree.setChecked(roleMenuList.contains(menu.getMenuId() + menu.getPerms()));
			}
			ztrees.add(ztree);
		}
		return ztrees;
	}
	public String transMenuName(SysMenuVO menu, List<String> roleMenuList, boolean permsFlag)
	{
		StringBuffer sb = new StringBuffer();
		sb.append(menu.getMenuName());
		if (permsFlag)
		{
			sb.append("<font color=\"#888\">&nbsp;&nbsp;&nbsp;" + menu.getPerms() + "</font>");
		}
		return sb.toString();
	}

	/**
	 * 查询所有菜单
	 *
	 * @return 菜单列表
	 */
	@Override
	public List<Ztree> menuTreeData()
	{
		SysMenuVO menu = new SysMenuVO();
		SysUserVO user = ShiroUtils.getUserEntity();
		menu.setCreateBy(String.valueOf(user.getUserId()));
		List<SysMenuVO> menuList = generalDAO.queryList("sysMenuDao.selectMenuList", menu);
		List<Ztree> ztrees = initZtree(menuList,null, false);
		return ztrees;
	}
}
