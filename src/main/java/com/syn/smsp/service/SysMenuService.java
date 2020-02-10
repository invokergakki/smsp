package com.syn.smsp.service;

import com.syn.smsp.vo.SysMenuVO;
import com.syn.smsp.vo.SysRoleVO;
import com.syn.smsp.vo.SysUserVO;
import com.syn.smsp.vo.Ztree;

import java.util.List;
import java.util.Map;
import java.util.Set;


/**
 * 菜单管理
 * 
 */
public interface SysMenuService {
	
	/**
	 * 根据父菜单，查询子菜单
	 * @param parentId 父菜单ID
	 * @param menuIdList  用户菜单ID
	 */
	List<SysMenuVO> queryListParentId(Long parentId, List<Long> menuIdList);

	/**
	 * 根据用户ID查询菜单
	 *
	 * @param user 用户信息
	 * @return 菜单列表
	 */
	public List<SysMenuVO> selectMenusByUser(SysUserVO user);


	/**
	 * 获取用户权限列表
	 */
	Set<String> getUserPermissions(long userId);
	

	/**
	 * 查询菜单列表
	 */

	 List<SysMenuVO> queryMenuList(Map<String, Object> map);

	/**
	 * 查询用户的权限列表
	 */
	List<SysMenuVO> queryMenuList(SysMenuVO menu);

	/**
	 * 查询菜单数量
	 *
	 * @param parentId 菜单父ID
	 * @return 结果
	 */
	public int selectCountMenuByParentId(Long parentId);

	/**
	 * 查询菜单使用数量
	 *
	 * @param menuId 菜单ID
	 * @return 结果
	 */
	public int selectCountRoleMenuByMenuId(Long menuId);

	/**
	 * 删除菜单管理信息
	 *
	 * @param menuId 菜单ID
	 * @return 结果
	 */
	public int deleteMenuById(Long menuId);

	/**
	 * 根据菜单ID查询信息
	 *
	 * @param menuId 菜单ID
	 * @return 菜单信息
	 */
	public SysMenuVO selectMenuById(Long menuId);

	/**
	 * 修改保存菜单信息
	 *
	 * @param menu 菜单信息
	 * @return 结果
	 */
	public int updateMenu(SysMenuVO menu);

	/**
	 * 新增保存菜单信息
	 *
	 * @param menu 菜单信息
	 * @return 结果
	 */
	public int insertMenu(SysMenuVO menu);

	/**
	 * 校验菜单名称是否唯一
	 *
	 * @param menu 菜单信息
	 * @return 结果
	 */
	public SysMenuVO checkMenuNameUnique(SysMenuVO menu);

	/**
	 * 根据角色ID查询菜单
	 *
	 * @param role 角色对象
	 * @return 菜单列表
	 */
	public List<Ztree> roleMenuTreeData(SysRoleVO role);

	/**
	 * 查询所有菜单信息
	 *
	 * @return 菜单列表
	 */
	public List<Ztree> menuTreeData();
}
