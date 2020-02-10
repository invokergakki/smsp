package com.syn.smsp.vo;


import java.io.Serializable;

/**
 * 用户与角色对应关系
 * 
 */
public class SysUserRoleVO implements Serializable {

	/** 用户ID */
	private Long userId;

	/** 角色ID */
	private Long roleId;

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public Long getRoleId() {
		return roleId;
	}

	public void setRoleId(Long roleId) {
		this.roleId = roleId;
	}
}
