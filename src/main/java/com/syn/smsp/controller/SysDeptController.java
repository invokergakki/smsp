package com.syn.smsp.controller;

import com.syn.smsp.config.UserConstants;
import com.syn.smsp.service.SysDeptService;
import com.syn.smsp.toor.AjaxResult;
import com.syn.smsp.toor.StringUtils;
import com.syn.smsp.vo.SysDeptVO;
import com.syn.smsp.vo.SysRoleVO;
import com.syn.smsp.vo.Ztree;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * 系统用户
 * @author huby
 */
@Controller
@RequestMapping("/sys/dept")
public class SysDeptController extends BaseController {
	@Autowired
	private SysDeptService sysDeptService;

    private String prefix = "/sys/dept";

	// 部门管理页面
	@RequestMapping(value = "/dept", method = {RequestMethod.GET,RequestMethod.POST})
	public String dept()
	{
		return prefix + "/dept";
	}

	/**
	 *  部门列表
	 */
    @ResponseBody
    @RequestMapping(value = "/list", method = {RequestMethod.GET,RequestMethod.POST})
    public List<SysDeptVO> list(SysDeptVO dept)
    {
        return sysDeptService.selectDeptList(dept);
    }

    /**
     * 新增部门
     */
    @GetMapping("/add/{parentId}")
    public String add(@PathVariable("parentId") Long parentId, ModelMap mmap)
    {
        SysDeptVO dept = new SysDeptVO();
        dept.setDeptId(parentId);

        SysDeptVO deptVO = sysDeptService.selectDeptById(dept);
        if(deptVO !=null && deptVO.getParentId().equals(0L)){
            deptVO.setDeptName("");
        }
        mmap.put("dept", deptVO);
        return prefix + "/add";
    }
    /**
     * 新增保存部门
     */
    @SysLog(title = "部门新增")
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(SysDeptVO dept)
    {
      if(StringUtils.isEmpty(dept.getParentName())){
          dept.setParentId(0L);
      }
      return toAjax(sysDeptService.save(dept));
    }
    /**
     * 修改
     */
    @GetMapping("/edit/{deptId}")
    public String edit(@PathVariable("deptId") Long deptId, ModelMap mmap)
    {
        SysDeptVO deptVO = new SysDeptVO();
        deptVO.setDeptId(deptId);
        SysDeptVO dept = sysDeptService.selectDeptById(deptVO);
        if (StringUtils.isNotNull(dept) && 100L == deptId)
        {
            dept.setParentName("无");
        }
        mmap.put("dept", dept);
        return prefix + "/edit";
    }
    /**
     * 保存
     */
    @SysLog(title = "部门修改")
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(SysDeptVO dept)
    {
     return toAjax(sysDeptService.updateDept(dept));
    }
    /**
     * 删除
     */
    @SysLog(title = "部门删除")
    @GetMapping("/remove/{deptId}")
    @ResponseBody
    public AjaxResult remove(@PathVariable("deptId") Long deptId)
    {
        if (sysDeptService.selectDeptCount(deptId) > 0)
        {
            return AjaxResult.warn("存在下级部门,不允许删除");
        }
        if (sysDeptService.checkDeptExistUser(deptId))
        {
            return AjaxResult.warn("部门存在用户,不允许删除");
        }
        return toAjax(sysDeptService.deleteDeptById(deptId));

    }
    /**
     * 校验部门名称
     */
    @PostMapping("/checkDeptNameUnique")
    @ResponseBody
    public String checkDeptNameUnique(SysDeptVO dept)
    {
        Long deptId = StringUtils.isNull(dept.getDeptId()) ? -1L : dept.getDeptId();
        SysDeptVO info = sysDeptService.checkDeptNameUnique(dept);
        if (StringUtils.isNotNull(info) && info.getDeptId().longValue() != deptId.longValue())
        {
            return UserConstants.DEPT_NAME_NOT_UNIQUE;
        }
        return UserConstants.DEPT_NAME_UNIQUE;
    }

    /**
     * 选择部门树
     */
    @GetMapping("/selectDeptTree/{deptId}")
    public String selectDeptTree(@PathVariable("deptId") Long deptId, ModelMap mmap)
    {
       SysDeptVO dept = new SysDeptVO();
       dept.setDeptId(deptId);
       mmap.put("dept", sysDeptService.selectDeptById(dept));
        return prefix + "/tree";
    }

    /**
     * 加载部门列表树
     */
    @GetMapping("/treeData")
    @ResponseBody
    public List<Ztree> treeData()
    {
         List<Ztree> ztrees = sysDeptService.selectDeptTree(new SysDeptVO());
         return ztrees;
    }

    /**
     * 加载角色部门（数据权限）列表树
     */
    @GetMapping("/roleDeptTreeData")
    @ResponseBody
    public List<Ztree> deptTreeData(SysRoleVO role)
    {
        //List<Ztree> ztrees = deptService.roleDeptTreeData(role);
        return null;
    }
}
