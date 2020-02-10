package com.syn.smsp.vo;


import java.io.Serializable;

/**
 * 角色与菜单对应关系
 * 
 */
public class SysRoleMenuVO implements Serializable {

	private static final long serialVersionUID = 1L;

	/** 角色ID */
	private Long roleId;

	/** 菜单ID */
	private Long menuId;

	public static long getSerialVersionUID() {
		return serialVersionUID;
	}

	public Long getRoleId() {
		return roleId;
	}

	public void setRoleId(Long roleId) {
		this.roleId = roleId;
	}

	public Long getMenuId() {
		return menuId;
	}

	public void setMenuId(Long menuId) {
		this.menuId = menuId;
	}
}
