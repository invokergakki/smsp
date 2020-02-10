package com.syn.smsp.service;
import com.syn.smsp.vo.SysRoleVO;

import java.util.List;


/**
 * 角色
 * 
 */
public interface SysRoleService {

	/**
	 * 查询用户创建的角色ID列表
	 */
	List<SysRoleVO> queryRoleList(SysRoleVO role);

	/**
	 * 新增保存角色信息
	 *
	 * @param role 角色信息
	 * @return 结果
	 */
	public int insertRole(SysRoleVO role);

	/**
	 * 通过角色ID查询角色
	 *
	 * @param role 角色
	 * @return 角色对象信息
	 */
	public SysRoleVO selectRoleById(SysRoleVO role);

	/**
	 * 修改保存角色信息
	 *
	 * @param role 角色信息
	 * @return 结果
	 */
	public int updateRole(SysRoleVO role);

	/**
	 * 修改数据权限信息
	 *
	 * @param role 角色信息
	 * @return 结果
	 */
	public int authDataScope(SysRoleVO role);

	/**
	 * 批量删除角色用户信息
	 *
	 * @param ids 需要删除的数据ID
	 * @return 结果
	 * @throws Exception 异常
	 */
	public int deleteRoleByIds(String ids) throws Exception;

	/**
	 * 通过角色ID查询角色使用数量
	 *
	 * @param roleId 角色ID
	 * @return 结果
	 */
	public int countUserRoleByRoleId(Long roleId);

	/**
	 * 校验角色名称是否唯一
	 *
	 * @param role 角色信息
	 * @return 结果
	 */
	public String checkRoleNameUnique(SysRoleVO role);

	/**
	 * 校验角色权限是否唯一
	 *
	 * @param role 角色信息
	 * @return 结果
	 */
	public String checkRoleKeyUnique(SysRoleVO role);

	/**
	 * 角色状态修改
	 *
	 * @param role 角色信息
	 * @return 结果
	 */
	public int changeStatus(SysRoleVO role);


	/**
	 * 查询所有角色
	 *
	 * @return 角色列表
	 */
	public List<SysRoleVO> selectRoleAll();

	/**
	 * 根据用户ID查询角色
	 *
	 * @param userId 用户ID
	 * @return 角色列表
	 */
	public List<SysRoleVO> selectRolesByUserId(Long userId);

	/**
	 * 根据用户ID查询用户所属角色组
	 *
	 * @param userId 用户ID
	 * @return 结果
	 */
	public String selectUserRoleGroup(Long userId);
}
