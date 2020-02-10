package com.syn.smsp.controller;

import com.syn.smsp.service.SysRoleService;
import com.syn.smsp.toor.AjaxResult;
import com.syn.smsp.toor.page.TableDataInfo;
import com.syn.smsp.vo.SysRoleVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * 角色管理
 * @author huby
 */
@Controller
@RequestMapping("/sys/role")
public class SysRoleController extends BaseController {

    private String prefix = "/sys/role";

    @Autowired
    private SysRoleService sysRoleService;
  
    // 角色权限管理页面
    @RequestMapping(value = "/role", method = {RequestMethod.GET,RequestMethod.POST})
    public String role()
    {
        return prefix + "/role";
    }

    /**
     * 角色列表
     */
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(SysRoleVO role)
    {
        startPage();
        List<SysRoleVO> list = sysRoleService.queryRoleList(role);
        return getDataTable(list);
    }

    /**
     * 新增角色
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存角色
     */
    @SysLog(title = "角色新增")
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(SysRoleVO role)
    {
        return toAjax(sysRoleService.insertRole(role));

    }

    /**
     * 修改角色
     */
    @GetMapping("/edit/{roleId}")
    public String edit(@PathVariable("roleId") Long roleId, ModelMap mmap)
    {
        SysRoleVO role = new SysRoleVO();
        role.setDelFlag("0");
        role.setRoleId(roleId);
        mmap.put("role", sysRoleService.selectRoleById(role));
        return prefix + "/edit";
    }

    /**
     * 修改角色
     */
    @SysLog(title = "角色修改")
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(SysRoleVO role)
    {
        return toAjax(sysRoleService.updateRole(role));
    }

    /**
     * 角色分配数据权限
     */
    @GetMapping("/authDataScope/{roleId}")
    public String authDataScope(@PathVariable("roleId") Long roleId, ModelMap mmap)
    {
        SysRoleVO role = new SysRoleVO();
        role.setRoleId(roleId);
        mmap.put("role", sysRoleService.selectRoleById(role));
        return prefix + "/dataScope";
    }

    /**
     * 保存角色分配数据权限
     */
    @SysLog(title = "角色分配权限")
    @PostMapping("/authDataScope")
    @ResponseBody
    public AjaxResult authDataScopeSave(SysRoleVO role)
    {
        return toAjax(sysRoleService.authDataScope(role));
    }

    /**
     * 删除角色
     */
    @SysLog(title = "角色删除")
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        try
        {
            return toAjax(sysRoleService.deleteRoleByIds(ids));
        }
        catch (Exception e)
        {
            return error(e.getMessage());
        }
    }

    /**
     * 校验角色名称
     */
    @PostMapping("/checkRoleNameUnique")
    @ResponseBody
    public String checkRoleNameUnique(SysRoleVO role)
    {
        return sysRoleService.checkRoleNameUnique(role);
    }

    /**
     * 校验角色权限
     */
    @PostMapping("/checkRoleKeyUnique")
    @ResponseBody
    public String checkRoleKeyUnique(SysRoleVO role)
    {
        return sysRoleService.checkRoleKeyUnique(role);
    }

    /**
     * 选择菜单树
     */
    @GetMapping("/selectMenuTree")
    public String selectMenuTree()
    {
        return prefix + "/tree";
    }

    /**
     * 角色状态修改
     */
    @PostMapping("/changeStatus")
    @ResponseBody
    public AjaxResult changeStatus(SysRoleVO role)
    {
        return toAjax(sysRoleService.changeStatus(role));
    }

    /**
     * 分配用户
     */
    @GetMapping("/authUser/{roleId}")
    public String authUser(@PathVariable("roleId") Long roleId, ModelMap mmap)
    {
        SysRoleVO role = new SysRoleVO();
        role.setRoleId(roleId);
        mmap.put("role", sysRoleService.selectRoleById(role));
        return prefix + "/authUser";
    }


    /**
     * 选择用户
     */
    @GetMapping("/authUser/selectUser/{roleId}")
    public String selectUser(@PathVariable("roleId") Long roleId, ModelMap mmap)
    {
        SysRoleVO role = new SysRoleVO();
        role.setRoleId(roleId);
        mmap.put("role", sysRoleService.selectRoleById(role));
        return prefix + "/selectUser";
    }
}
