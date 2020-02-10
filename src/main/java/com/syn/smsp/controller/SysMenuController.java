package com.syn.smsp.controller;

import com.syn.smsp.config.UserConstants;
import com.syn.smsp.service.SysMenuService;
import com.syn.smsp.toor.AjaxResult;
import com.syn.smsp.vo.SysMenuVO;
import com.syn.smsp.vo.SysRoleVO;
import com.syn.smsp.vo.Ztree;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.*;

/**
 * 系统菜单
 * @author huby
 */
@Controller
@RequestMapping("/sys/menu")
public class SysMenuController extends BaseController {
	@Autowired
	private SysMenuService sysMenuService;

	private String prefix = "/sys/menu";
	// 用户管理页面
	@RequestMapping(value = "/menu", method = {RequestMethod.GET,RequestMethod.POST})
	public String menu()
	{
		return prefix + "/menu";
	}

	/**
	 * 所有菜单列表
	 */
	@RequestMapping(value = "/list", method = {RequestMethod.GET,RequestMethod.POST})
	@ResponseBody
	public List<SysMenuVO> list(SysMenuVO menu)
	{
		if(StringUtils.isNotEmpty(menu.getMenuName())){
			menu.setMenuName(menu.getMenuName().replace("\t","").trim());
		}
		List<SysMenuVO> menuList = sysMenuService.queryMenuList(menu);
		return menuList;
	}


	/**
	 * 删除菜单
	 */
	@SysLog(title = "菜单删除")
	@GetMapping("/remove/{menuId}")
	@ResponseBody
	public AjaxResult remove(@PathVariable("menuId") Long menuId)
	{
		if (sysMenuService.selectCountMenuByParentId(menuId) > 0)
		{
			return AjaxResult.warn("存在子菜单,不允许删除");
		}
		if (sysMenuService.selectCountRoleMenuByMenuId(menuId) > 0)
		{
			return AjaxResult.warn("菜单已分配,不允许删除");
		}
		return toAjax(sysMenuService.deleteMenuById(menuId));
	}

	/**
	 * 新增
	 */
	@GetMapping("/add/{parentId}")
	public String add(@PathVariable("parentId") Long parentId, ModelMap mmap)
	{
		SysMenuVO menu = null;
		if (0L != parentId)
		{
			menu = sysMenuService.selectMenuById(parentId);
		}
		else
		{
			menu = new SysMenuVO();
			menu.setMenuId(0L);
			menu.setMenuName("主目录");
		}
		mmap.put("menu", menu);
		return prefix + "/add";
	}

	/**
	 * 新增保存菜单
	 */
	@SysLog(title = "菜单新增")
	@PostMapping("/add")
	@ResponseBody
	public AjaxResult addSave(SysMenuVO menu)
	{
       return toAjax(sysMenuService.insertMenu(menu));
	}

	/**
	 * 修改菜单
	 */
	@GetMapping("/edit/{menuId}")
	public String edit(@PathVariable("menuId") Long menuId, ModelMap mmap)
	{
	    mmap.put("menu", sysMenuService.selectMenuById(menuId));
		return prefix + "/edit";
	}

	/**
	 * 修改保存菜单
	 */
	@SysLog(title = "菜单修改")
	@PostMapping("/edit")
	@ResponseBody
	public AjaxResult editSave(SysMenuVO menu)
	{
	 return toAjax(sysMenuService.updateMenu(menu));
	}

	/**
	 * 选择菜单图标
	 */
	@GetMapping("/icon")
	public String icon()
	{
		return prefix + "/icon";
	}

	/**
	 * 校验菜单名称
	 */
	@PostMapping("/checkMenuNameUnique")
	@ResponseBody
	public String checkMenuNameUnique(SysMenuVO menu)
	{
		Long menuId = com.syn.smsp.toor.StringUtils.isNull(menu.getMenuId()) ? -1L : menu.getMenuId();
		SysMenuVO info = sysMenuService.checkMenuNameUnique(menu);
		if (com.syn.smsp.toor.StringUtils.isNotNull(info) && info.getMenuId().longValue() != menuId.longValue())
		{
			return UserConstants.MENU_NAME_NOT_UNIQUE;
		}
		return UserConstants.MENU_NAME_UNIQUE;
	}

	/**
	 * 加载角色菜单列表树
	 */
	@GetMapping("/roleMenuTreeData")
	@ResponseBody
	public List<Ztree> roleMenuTreeData(SysRoleVO role)
	{
		 List<Ztree> ztrees = sysMenuService.roleMenuTreeData(role);
		return ztrees;
	}

	/**
	 * 加载所有菜单列表树
	 */
	@GetMapping("/menuTreeData")
	@ResponseBody
	public List<Ztree> menuTreeData(SysRoleVO role)
	{
		 List<Ztree> ztrees = sysMenuService.menuTreeData();
		return ztrees;
	}

	/**
	 * 选择菜单树
	 */
	@GetMapping("/selectMenuTree/{menuId}")
	public String selectMenuTree(@PathVariable("menuId") Long menuId, ModelMap mmap)
	{
		 mmap.put("menu", sysMenuService.selectMenuById(menuId));
		return prefix + "/tree";
	}

}
