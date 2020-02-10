package com.syn.smsp.service.impl;

import com.syn.smsp.config.UserConstants;
import com.syn.smsp.constant.Constant;
import com.syn.smsp.service.SysDeptService;
import com.syn.smsp.toor.Constants;
import com.syn.smsp.toor.StringUtils;
import com.syn.smsp.util.GeneralDAO;
import com.syn.smsp.util.ShiroUtils;
import com.syn.smsp.vo.SysDeptVO;
import com.syn.smsp.vo.SysUserVO;
import com.syn.smsp.vo.Ztree;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;


/**
 * 角色
 * 
 */
@Service
public class SysDeptServiceImpl implements SysDeptService {

	@Autowired
	private GeneralDAO generalDAO;

	@Override
	public int save(SysDeptVO dept){
	  return generalDAO.save("sysDeptDao.save", dept);
	}

	@Override
	public List<SysDeptVO> selectDeptList(SysDeptVO dept){
		SysUserVO user = ShiroUtils.getUserEntity();
		 if(user.getDeptId() !=10L){
			 SysDeptVO deptVO = new SysDeptVO();
			 deptVO.setDeptId(user.getDeptId());
			 deptVO = generalDAO.queryObject("sysDeptDao.selectDeptById", deptVO);
			 if(!deptVO.getParentId().equals(0L)){
				 dept.setDeptId(deptVO.getParentId());
				 dept.setParentId(deptVO.getParentId());
			 }else{
				 dept.setDeptId(deptVO.getDeptId());
				 dept.setParentId(deptVO.getDeptId());
			 }
		 }
		return generalDAO.queryList("sysDeptDao.selectDeptList", dept);
	}
	public List<SysDeptVO> selectDeptListById(SysDeptVO dept){
		return generalDAO.queryList("sysDeptDao.selectDeptListById", dept);
	}
	@Override
	public int updateDept(SysDeptVO dept){
	 return  generalDAO.updateObject("sysDeptDao.updateSysDeptVO",dept);
	}
	/**
	 * 根据部门ID查询信息
	 *  deptId 部门ID
	 * @return 部门信息
	 */
	@Override
	public SysDeptVO selectDeptById(SysDeptVO dept)
	{
		return generalDAO.queryObject("sysDeptDao.selectDeptById", dept);
	}

	@Override
	public SysDeptVO checkDeptNameUnique(SysDeptVO dept)
	{
		return generalDAO.queryObject("sysDeptDao.checkDeptNameUnique", dept);
	}
	/**
	 * 查询部门管理树
	 *
	 * @param dept 部门信息
	 * @return 所有部门信息
	 */
	@Override
	public List<Ztree> selectDeptTree(SysDeptVO dept)
	{
		Long deptId = ShiroUtils.getUserEntity().getDeptId();
		SysDeptVO deptVO = new SysDeptVO();
		deptVO.setDeptId(deptId);
		deptVO = generalDAO.queryObject("sysDeptDao.selectDeptById", deptVO);
		if(StringUtils.isNotNull(deptVO) && StringUtils.isNotNull(deptVO.getParentId()) && deptVO.getParentId()!=0L){
			dept.setDeptId(deptVO.getParentId());
			dept.setParentId(deptVO.getParentId());
		}else if(deptId !=10L){
			dept.setDeptId(deptId);
			dept.setParentId(deptId);
		}
		List<SysDeptVO> deptList =  generalDAO.queryList("sysDeptDao.selectDeptList", dept);
		List<Ztree> ztrees = initZtree(deptList);
		return ztrees;
	}
	/**
	 * 对象转部门树
	 *
	 * @param deptList 部门列表
	 * @return 树结构列表
	 */
	public List<Ztree> initZtree(List<SysDeptVO> deptList)
	{
		return initZtree(deptList, null);
	}
	/**
	 * 对象转部门树
	 *
	 * @param deptList 部门列表
	 * @param roleDeptList 角色已存在菜单列表
	 * @return 树结构列表
	 */
	public List<Ztree> initZtree(List<SysDeptVO> deptList, List<String> roleDeptList)
	{
		List<Ztree> ztrees = new ArrayList<Ztree>();
		boolean isCheck = StringUtils.isNotNull(roleDeptList);
		for (SysDeptVO dept : deptList)
		{
			if (UserConstants.DEPT_NORMAL.equals(dept.getStatus()))
			{
				Ztree ztree = new Ztree();
				ztree.setId(dept.getDeptId());
				ztree.setpId(dept.getParentId());
				ztree.setName(dept.getDeptName());
				ztree.setTitle(dept.getDeptName());
				if (isCheck)
				{
					ztree.setChecked(roleDeptList.contains(dept.getDeptId() + dept.getDeptName()));
				}
				ztrees.add(ztree);
			}
		}
		return ztrees;
	}

	/**
	 * 查询部门人数
	 *
	 * @param parentId 部门ID
	 * @return 结果
	 */
	@Override
	public int selectDeptCount(Long parentId)
	{
		SysDeptVO deptVO = new SysDeptVO();
		deptVO.setParentId(parentId);
		SysDeptVO dept = generalDAO.queryObject("sysDeptDao.selectDeptCount",deptVO);
		if(StringUtils.isNull(dept)){
			return  Constants.FAIL;
		}else{
			return  Constants.RESULT;
		}
	}

	/**
	 * 查询部门是否存在用户
	 *
	 * @param deptId 部门ID
	 * @return 结果 true 存在 false 不存在
	 */
	@Override
	public boolean checkDeptExistUser(Long deptId)
	{
		SysDeptVO deptVO = new SysDeptVO();
		deptVO.setDeptId(deptId);
		deptVO.setDelFlag("0");
	    SysDeptVO dept = generalDAO.queryObject("sysDeptDao.checkDeptExistUser",deptVO);
		return StringUtils.isNull(dept);

	}
	@Override
	public int  deleteDeptById(Long sysDeptId){
		try{
			int deptId=sysDeptId.intValue();
			 generalDAO.deleteObject("sysDeptDao.remove",deptId);
			return  Constants.RESULT;
		}catch (Exception e){
			e.printStackTrace();
			return Constants.FAIL;
		}
	}

}
