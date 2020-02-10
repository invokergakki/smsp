package com.syn.smsp.service.impl;

import com.syn.smsp.service.SysRoleMenuService;
import com.syn.smsp.toor.Constants;
import com.syn.smsp.util.GeneralDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


/**
 * 角色与菜单对应关系
 * 
 */
@Service
public class SysRoleMenuServiceImpl implements SysRoleMenuService {
	@Autowired
	private GeneralDAO generalDAO;

	@Override
	@Transactional
	public void saveOrUpdate(Long roleId, List<Long> menuIdList) {
		//先删除角色与菜单关系
		generalDAO.deleteObject("sysRoleMenuDao.delete",roleId);

		if(menuIdList.size() == Constants.FAIL){
			return ;
		}

		//保存角色与菜单关系
		Map<String, Object> map = new HashMap<>();
		map.put("roleId", roleId);
		map.put("menuIdList", menuIdList);
		generalDAO.save("sysRoleMenuDao.save",map);
	}

	@Override
	public List<Long> queryMenuIdList(Long roleId) {
		return generalDAO.queryForList("sysRoleMenuDao.queryMenuIdList",roleId);
	}

}
