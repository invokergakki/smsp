package com.syn.smsp.service;

import com.syn.smsp.vo.SysUserVO;
import com.syn.smsp.vo.TbUserVO;

import java.util.List;


/**
 * 系统用户
 * 
 */
public interface TbUserService {

	/**
	 * 根据条件分页查询用户列表
	 *
	 * @param user 用户信息
	 * @reurn 用户信息集合信息
	 */
    List<TbUserVO> selectUserList(TbUserVO user);

	/**
	 * 根据条件查询单个
	 */
	SysUserVO selectUserById(TbUserVO user);

	/**
	 *
	 */
	boolean selectUserByToken(String token);

	/**
	 * 保存用户信息
	 *
	 * @param user 用户信息
	 * @return 结果
	 */
    int insertUser(TbUserVO user);


	/**
	 * 修改用户详细信息
	 *
	 * @param user 用户信息
	 * @return 结果
	 */
    int updateUserInfo(TbUserVO user);

}
