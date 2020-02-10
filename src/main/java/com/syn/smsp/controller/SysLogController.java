package com.syn.smsp.controller;

import com.syn.smsp.service.SysDeptService;
import com.syn.smsp.service.SysLogininforService;
import com.syn.smsp.service.SysOperLogService;
import com.syn.smsp.toor.AjaxResult;
import com.syn.smsp.toor.StringUtils;
import com.syn.smsp.toor.page.TableDataInfo;
import com.syn.smsp.util.ShiroUtils;
import com.syn.smsp.vo.SysDeptVO;
import com.syn.smsp.vo.SysLogininforVO;
import com.syn.smsp.vo.SysOperLogVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * 系统用户登录日志、用户操作日志
 * @author huby
 */
@Controller
@RequestMapping("/sys/log")
public class SysLogController extends BaseController {


	@Autowired
	private SysLogininforService sysLogininforService;

	@Autowired
	private SysOperLogService sysOperLogService;

	@Autowired
	private SysDeptService sysDeptService;

    private String prefix = "/sys/log";

	// 用户登录日志页面
	@RequestMapping(value = "/logininfor", method = {RequestMethod.GET,RequestMethod.POST})
	public String logininfor()
	{
		return prefix + "/logininfor";
	}

	@PostMapping("/logininfor/list")
	@ResponseBody
	public TableDataInfo logininforList(SysLogininforVO logininfor)
	{
		Long deptId = ShiroUtils.getUserEntity().getDeptId();
		if(deptId !=10L && StringUtils.isNull(logininfor.getDeptId())){
			SysDeptVO dept = new SysDeptVO();
			dept.setDeptId(deptId);
			SysDeptVO deptVO = sysDeptService.selectDeptById(dept);
			if(StringUtils.isNotNull(deptVO)  && deptVO.getParentId() != 0L){
				logininfor.setDeptId(deptVO.getParentId());
			}else{
				logininfor.setDeptId(deptVO.getDeptId());
			}
		}
		startPage();
		List<SysLogininforVO> list = sysLogininforService.selectLogininforList(logininfor);
		return getDataTable(list);
	}

	@PostMapping("/logininfor/remove")
	@ResponseBody
	public AjaxResult logininforRemove(String ids)
	{
		return toAjax(sysLogininforService.deleteLogininforByIds(ids));
	}

	@SysLog(title = "清空登录日志")
	@PostMapping("/logininfor/clean")
	@ResponseBody
	public AjaxResult logininforClean()
	{
		SysLogininforVO logininfor = new SysLogininforVO();
		Long deptId = ShiroUtils.getUserEntity().getDeptId();
		if(deptId !=10L){
			SysDeptVO dept = new SysDeptVO();
			dept.setDeptId(deptId);
			SysDeptVO deptVO = sysDeptService.selectDeptById(dept);
			if(StringUtils.isNotNull(deptVO)  && deptVO.getParentId() != 0L){
				logininfor.setDeptId(deptVO.getParentId());
			}else{
				logininfor.setDeptId(deptVO.getDeptId());
			}
		}else{
			logininfor.setDeptId(10L);
		}
		sysLogininforService.cleanLogininfor(logininfor);
		return success();
	}


    // 用户操作日志页面
    @RequestMapping(value = "/operlog", method = {RequestMethod.GET,RequestMethod.POST})
    public String operlog()
    {
        return prefix + "/operlog";
    }

	@PostMapping("/operlog/list")
	@ResponseBody
	public TableDataInfo operlogList(SysOperLogVO operLog)
	{
		Long deptId = ShiroUtils.getUserEntity().getDeptId();
		if(deptId !=10L && StringUtils.isNull(operLog.getDeptId())){
			SysDeptVO dept = new SysDeptVO();
			dept.setDeptId(deptId);
			SysDeptVO deptVO = sysDeptService.selectDeptById(dept);
			if(StringUtils.isNotNull(deptVO)  && deptVO.getParentId() != 0L){
				operLog.setDeptId(deptVO.getParentId());
			}else{
				operLog.setDeptId(deptVO.getDeptId());
			}
		}
		startPage();
		List<SysOperLogVO> list = sysOperLogService.selectOperLogList(operLog);
		return getDataTable(list);
	}

	@PostMapping("/operlog/remove")
	@ResponseBody
	public AjaxResult operlogRemove(String ids)
	{
		 return toAjax(sysOperLogService.deleteOperLogByIds(ids));
	}

	@GetMapping("/operlog/detail/{operId}")
	public String operlogDetail(@PathVariable("operId") Long operId, ModelMap mmap)
	{
		 mmap.put("operLog", sysOperLogService.selectOperLogById(operId));
		return prefix + "/detail";
	}
	@SysLog(title = "清空操作日志")
	@PostMapping("/operlog/clean")
	@ResponseBody
	public AjaxResult operlogClean()
	{
		SysOperLogVO operLog = new SysOperLogVO();
		Long deptId = ShiroUtils.getUserEntity().getDeptId();
		if(deptId !=10L){
			SysDeptVO dept = new SysDeptVO();
			dept.setDeptId(deptId);
			SysDeptVO deptVO = sysDeptService.selectDeptById(dept);
			if(StringUtils.isNotNull(deptVO)  && deptVO.getParentId() != 0L){
				operLog.setDeptId(deptVO.getParentId());
			}else{
				operLog.setDeptId(deptVO.getDeptId());
			}
		}else{
			operLog.setDeptId(10L);
		}
		sysOperLogService.cleanOperLog(operLog);
		return success();
	}

}
