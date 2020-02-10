package com.syn.smsp.service;

import com.syn.smsp.vo.SysUserVO;

import java.util.List;


/**
 * 系统用户
 * 
 */
public interface SysUserService {
	/**
	 * 根据用户名，查询系统用户
	 */
	SysUserVO queryByUserName(String username);



	/**
	 * 查询用户的所有权限
	 * @param userId  用户ID
	 */
	List<String> queryAllPerms(Long userId);

	/**
	 * 根据条件分页查询用户列表
	 *
	 * @param user 用户信息
	 * @return 用户信息集合信息
	 */
	public List<SysUserVO> selectUserList(SysUserVO user);

	/**
	 * 保存用户信息
	 *
	 * @param user 用户信息
	 * @return 结果
	 */
	public int insertUser(SysUserVO user);

	/**
	 * 通过用户ID查询用户
	 *
	 * @param userId 用户ID
	 * @return 用户对象信息
	 */
	public SysUserVO selectUserById(Long userId);

	/**
	 * 保存用户信息
	 *
	 * @param user 用户信息
	 * @return 结果
	 */
	public int updateUser(SysUserVO user);

	/**
	 * 修改账户状态
	 *
	 * @param user 用户信息
	 * @return 结果
	 */
	public int updateUserStatus(SysUserVO user);

	/**
	 * 修改用户密码信息
	 *
	 * @param user 用户信息
	 * @return 结果
	 */
	public int resetUserPwd(SysUserVO user);

	/**
	 * 修改用户详细信息
	 *
	 * @param user 用户信息
	 * @return 结果
	 */
	public int updateUserInfo(SysUserVO user);

	/**
	 * 批量删除用户信息
	 *
	 * @param ids 需要删除的数据ID
	 * @return 结果
	 * @throws Exception 异常
	 */
	public int deleteUserByIds(String ids) throws Exception;


	/**
	 * 校验用户名称、手机号码、email是否唯一
	 *
	 * @param user 用户名称、手机号码、email
	 * @return 结果
	 */
	public String checkMessageUnique(SysUserVO user);

	/**
	 * 校验用户密码是否存在
	 *
	 * @param user 用户密码
	 * @return 结果
	 */
	public String checkPasswordUnique(SysUserVO user);

}
