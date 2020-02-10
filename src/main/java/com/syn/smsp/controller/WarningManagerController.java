package com.syn.smsp.controller;

import com.syn.smsp.service.SysDeptService;
import com.syn.smsp.service.TbUserService;
import com.syn.smsp.service.WarningManagerService;
import com.syn.smsp.toor.AjaxResult;
import com.syn.smsp.toor.StringUtils;
import com.syn.smsp.toor.page.TableDataInfo;
import com.syn.smsp.util.ShiroUtils;
import com.syn.smsp.util.importData.ExcelUtils;
import com.syn.smsp.vo.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 报警管理
 *
 * @author zwh
 */
@Controller
@RequestMapping("")
public class WarningManagerController extends BaseController {

    @Autowired
    private WarningManagerService waringManagerService;

    @Autowired
    private SysDeptService sysDeptService;

    @Autowired
    private  TbUserService  tbUserService;

    // 报警界面
    @RequestMapping(value = "/sys/warning", method = {RequestMethod.GET,RequestMethod.POST})
    public String warning()
    {
        return  "sys/warning/warning";
    }

    /**
     * 报警列表
     *
     * @author zwh
     */
    @RequestMapping(value = "/sys/WaringList", method = {RequestMethod.GET,RequestMethod.POST})
    @ResponseBody
    public TableDataInfo WaringList(WarningVO warningVO, HttpSession session){
        Long deptId = ShiroUtils.getUserEntity().getDeptId();
        if(deptId !=10L && StringUtils.isNull(warningVO.getDeptId())){
            SysDeptVO dept = new SysDeptVO();
            dept.setDeptId(deptId);
            SysDeptVO deptVO = sysDeptService.selectDeptById(dept);
            if(StringUtils.isNotNull(deptVO)  && deptVO.getParentId() != 0L){
                warningVO.setDeptId(deptVO.getParentId());
            }else{
                warningVO.setDeptId(deptVO.getDeptId());
            }
        }
        startPage();
        List<WarningVO> list = waringManagerService.getWarningList(warningVO);
        return getDataTable(list);
    }

    /**
     * 报警数据推送接口
     *
     * @author zwh
     */
    @RequestMapping(value = "/seren/sendSerenMsg", method = {RequestMethod.GET,RequestMethod.POST})
    @ResponseBody
    public AjaxResult sendWaring(SirenWarningVO sirenWarningVO) {
        try {
            if (StringUtils.isNull(sirenWarningVO.getToken())){
                return  error("token不能为空");
            }
            if(StringUtils.isNotNull(sirenWarningVO.getToken()) && !tbUserService.selectUserByToken(sirenWarningVO.getToken()))  {
                return  error("token验证失败");
            }
            waringManagerService.sendSerenMsg(sirenWarningVO);
        }catch (Exception e){
            return error();
        }
        return success();
    }

    @RequestMapping(value = "/sys/warning/export", method = {RequestMethod.GET,RequestMethod.POST})
    @ResponseBody
    public void export(WarningVO warningVO, HttpServletRequest request, HttpServletResponse response) {
        try {
            List<WarningVO> list = waringManagerService.getWarningList(warningVO);
            ExcelUtils.getHSSFWorkbook("报警列表"+new Date().getTime()+".xlsx","报警数据", list,null, response);
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    /**
     * 报警状态修改
     */
    @SysLog(title = "报警状态修改")
    @PostMapping("/sys/warning/changeStatus")
    @ResponseBody
    public AjaxResult changeStatus(String ids,String warningDis)
    {
        return toAjax(waringManagerService.updateStatus(ids, warningDis));
    }

    // 报警日志-页面
    @RequestMapping(value = "/sys/warningLog", method = {RequestMethod.GET,RequestMethod.POST})
    public String warning_log(WarningVO warningVO, HttpSession session)
    {
        session.setAttribute("warningVO",warningVO);
        return "sys/warning/warning_log";
    }

    /**
     * 报警日志
     *
     * @author zwh
     */ 
    @RequestMapping(value = "/sys/waringLogList", method = {RequestMethod.GET,RequestMethod.POST})
    @ResponseBody
    public TableDataInfo WaringLogList(HttpSession session){
        WarningVO warningVO = (WarningVO) session.getAttribute("warningVO");
        startPage();
        List<WarningVO> list = waringManagerService.getWarningLogList(warningVO);
        return getDataTable(list);
    }
}