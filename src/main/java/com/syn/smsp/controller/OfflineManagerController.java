package com.syn.smsp.controller;


import com.syn.smsp.service.SysDeptService;
import com.syn.smsp.service.SysFaultLogService;

import com.syn.smsp.toor.StringUtils;
import com.syn.smsp.toor.page.TableDataInfo;

import com.syn.smsp.util.ShiroUtils;
import com.syn.smsp.vo.SysDeptVO;
import com.syn.smsp.vo.SysFaultLogVO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;


import java.util.List;

/**
 * 离线管理
 *
 * @author fhm
 */
@Controller
@RequestMapping("")
public class OfflineManagerController extends BaseController {

    @Autowired
    private SysFaultLogService offlineManagerService;

    @Autowired
    private SysDeptService sysDeptService;

    // 离线界面
    @RequestMapping(value = "/sys/offline", method = {RequestMethod.GET, RequestMethod.POST})
    public String offline() {
        return "sys/offline/offline";
    }

    /**
     * 离线列表
     *
     * @author fhm
     */
    @RequestMapping(value = "/sys/OfflineList", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public TableDataInfo OfflineList(SysFaultLogVO faultLog) {
        Long deptId = ShiroUtils.getUserEntity().getDeptId();
        if (deptId != 10L && StringUtils.isNull(faultLog.getDeptId())) {
            SysDeptVO dept = new SysDeptVO();
            dept.setDeptId(deptId);
            SysDeptVO deptVO = sysDeptService.selectDeptById(dept);
            if (StringUtils.isNotNull(deptVO) && deptVO.getParentId() != 0L) {
                faultLog.setDeptId(deptVO.getParentId());
            } else {
                faultLog.setDeptId(deptVO.getDeptId());
            }
        }

        startPage();
        List<SysFaultLogVO> list = offlineManagerService.selectFaultLogList(faultLog);
        return getDataTable(list);
    }
}