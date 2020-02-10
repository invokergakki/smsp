package com.syn.smsp.controller;

import com.syn.smsp.service.SysDeptService;
import com.syn.smsp.service.SysDictDataService;
import com.syn.smsp.service.SysRoleService;
import com.syn.smsp.service.SysSensorService;
import com.syn.smsp.toor.AjaxResult;
import com.syn.smsp.toor.StringUtils;
import com.syn.smsp.toor.page.TableDataInfo;
import com.syn.smsp.util.ShiroUtils;
import com.syn.smsp.util.importData.ExcelUtil;
import com.syn.smsp.util.importData.FileUtils;
import com.syn.smsp.vo.SensorVO;
import com.syn.smsp.vo.SysDeptVO;
import com.syn.smsp.vo.SysSensorVO;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.ResourceUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.util.List;

/**
 * 设备管理
 *
 * @author huby
 */
@Controller
@RequestMapping("")
public class SysSensorController extends BaseController
{
    private String prefix = "/sys/sensor";

    private static final Logger log = LoggerFactory.getLogger(SysSensorController.class);

    @Autowired
    private SysSensorService sysSensorService;

    @Autowired
    private SysDictDataService sysDictDataService;

    @Autowired
    private SysDeptService sysDeptService;

    // 设备管理页面
    @RequestMapping(value = "/sys/sensor/sensor", method = {RequestMethod.GET,RequestMethod.POST})
    public String sensor(ModelMap mmap)
    {
        mmap.put("sysDept",sysDeptService.selectDeptListById(new SysDeptVO()));
        mmap.put("dict_facilityStatus",sysDictDataService.selectDictDataByType("facility_status"));
        return prefix + "/sensor";
    }

    @PostMapping("/sys/sensor/list")
    @ResponseBody
    public TableDataInfo list(SysSensorVO sensor)
    {
        Long deptId = ShiroUtils.getUserEntity().getDeptId();
        if(deptId !=10L && StringUtils.isNull(sensor.getDeptId())){
            SysDeptVO dept = new SysDeptVO();
            dept.setDeptId(deptId);
            SysDeptVO deptVO = sysDeptService.selectDeptById(dept);
            if(StringUtils.isNotNull(deptVO)  && deptVO.getParentId() != 0L){
                sensor.setDeptId(String.valueOf(deptVO.getParentId()));
            }else{
                sensor.setDeptId(String.valueOf(deptVO.getDeptId()));
            }
        }
        startPage();
        List<SysSensorVO> list = sysSensorService.selectSensorList(sensor);
        return getDataTable(list);
    }


    /**
     * 设备注册数据推送接口
     */
    @RequestMapping(value = "/sensor/registerMsg", method = {RequestMethod.GET,RequestMethod.POST})
    @ResponseBody
    public AjaxResult register(SensorVO sensor)
    {
        try {
            if(StringUtils.isNull(sensor.getIMEI())){  return success("IMEI好不能为空");}
            if(!sysSensorService.registerInsertSensor(sensor)){
                return success("数据已存在");
            }
        }catch (Exception e){
            return error();
        }
        return success();
    }

    /**
     * 新增设备
     */
    @GetMapping("/sys/sensor/add")
    public String add(ModelMap mmap)
    {
        mmap.put("sysDept",sysDeptService.selectDeptListById(new SysDeptVO()));
        mmap.put("dict_deviceType",sysDictDataService.selectDictDataByType("device_type"));
        mmap.put("dict_sensorType",sysDictDataService.selectDictDataByType("sensor_type"));
        return prefix + "/add";
    }

    /**
     * 新增保存设备
     */
    @SysLog(title = "设备新增")
    @PostMapping("/sys/sensor/add")
    @ResponseBody
    public AjaxResult addSave(SysSensorVO sensor)
    {
        if(StringUtils.isEmpty(sensor.getIMEI())){
            return  error("设备管理器编号不能为空");
        }
        if(StringUtils.isEmpty(sensor.getDeptId())){
            return  error("设备管理器归属地不能为空");
        }
        if(StringUtils.isEmpty(sensor.getImeiName())){
            return  error("设备管理器名称不能为空");
        }
        if(StringUtils.isEmpty(sensor.getPhone())){
            return  error("设备管理器电话不能为空");
        }
        if(StringUtils.isEmpty(sensor.getDeviceType())){
            return  error("设备管理器设备类型不能为空");
        }
        if(StringUtils.isEmpty(sensor.getSensorType())){
            return  error("设备管理器设备通信类型不能为空");
        }
        return toAjax(sysSensorService.insertSensor(sensor));
    }

    /**
     * 修改设备
     */
    @GetMapping("/sys/sensor/edit/{imei}")
    public String edit(@PathVariable("imei") String imei, ModelMap mmap)
    {
        mmap.put("sysDept",sysDeptService.selectDeptListById(new SysDeptVO()));
        mmap.put("dict_deviceType",sysDictDataService.selectDictDataByType("device_type"));
        mmap.put("dict_sensorType",sysDictDataService.selectDictDataByType("sensor_type"));
        mmap.put("imei", sysSensorService.selectSensorById(imei));
        return prefix + "/edit";
    }

    /**
     * 修改设备
     */
    @SysLog(title = "设备修改")
    @PostMapping("/sys/sensor/edit")
    @ResponseBody
    public AjaxResult editSave(SysSensorVO sensor)
    {
        if(StringUtils.isEmpty(sensor.getIMEI())){
            return  error("设备管理器编号不能为空");
        }
        if(StringUtils.isEmpty(sensor.getDeptId())){
            return  error("设备管理器归属地不能为空");
        }
        if(StringUtils.isEmpty(sensor.getImeiName())){
            return  error("设备管理器名称不能为空");
        }
        if(StringUtils.isEmpty(sensor.getPhone())){
            return  error("设备管理器电话不能为空");
        }
        if(StringUtils.isEmpty(sensor.getDeviceType())){
            return  error("设备管理器设备类型不能为空");
        }
        if(StringUtils.isEmpty(sensor.getSensorType())){
            return  error("设备管理器设备通信类型不能为空");
        }
        return toAjax(sysSensorService.updateSensorInfo(sensor));
    }



    @SysLog(title = "导入数据")
    @PostMapping("/sys/sensor/importData")
    @ResponseBody
    public AjaxResult importData(MultipartFile file, boolean updateSupport) throws Exception
    {
        ExcelUtil<SysSensorVO> util = new ExcelUtil<SysSensorVO>(SysSensorVO.class);
        List<SysSensorVO> sensorList = util.importExcel(file.getInputStream());
        String message = sysSensorService.importSensor(sensorList, updateSupport);
        return AjaxResult.success(message);
    }

    @SysLog(title = "模板下载")
    @GetMapping("/sys/sensor/importTemplate")
    @ResponseBody
    public AjaxResult importTemplate()
    {
        ExcelUtil<SysSensorVO> util = new ExcelUtil<SysSensorVO>(SysSensorVO.class);
        return util.importTemplateExcel("用户数据");
    }

    @SysLog(title = "导出数据")
    @PostMapping("/sys/sensor/export")
    @ResponseBody
    public AjaxResult export(SysSensorVO sensor)
    {
        List<SysSensorVO> list = sysSensorService.selectSensorList(sensor);
        ExcelUtil<SysSensorVO> util = new ExcelUtil<SysSensorVO>(SysSensorVO.class);
        return util.exportExcel(list, "用户数据");
    }
    /**
     * 通用下载请求
     *
     * @param fileName 文件名称
     * @param delete 是否删除
     */
    @GetMapping("/sys/sensor/common/download")
    public void fileDownload(String fileName, Boolean delete, HttpServletResponse response, HttpServletRequest request)
    {
        try
        {
            if (!FileUtils.isValidFilename(fileName))
            {
                throw new Exception(StringUtils.format("文件名称({})非法，不允许下载。 ", fileName));
            }
            String realFileName = System.currentTimeMillis() + fileName.substring(fileName.indexOf("_") + 1);


            File path = new File(ResourceUtils.getURL("classpath:").getPath());
            if(!path.exists()) path = new File("");
            String[] smsp = path.getAbsolutePath().split("smsp");
            StringBuilder download = new StringBuilder();
            if(smsp.length>0){
                download.append(smsp[0]+"smsp\\excel\\smsp");
            }
            String filePath = download.toString()+fileName;
            response.setCharacterEncoding("utf-8");
            response.setContentType("multipart/form-data");
            response.setHeader("Content-Disposition",
                    "attachment;fileName=" + FileUtils.setFileDownloadHeader(request, realFileName));
            FileUtils.writeBytes(filePath, response.getOutputStream());
            if (delete)
            {
                FileUtils.deleteFile(filePath);
            }
        }
        catch (Exception e)
        {
              log.error("下载文件失败", e);
        }
    }
    /**
     * 用户状态修改
     */
    @SysLog(title = "用户状态修改")
    @PostMapping("/sys/sensor/changeStatus")
    @ResponseBody
    public AjaxResult changeStatus(SysSensorVO sensor)
    {
        return toAjax(sysSensorService.updateSensorInfo(sensor));
    }

    /**
     * 校验设备编号是否唯一
     */
    @PostMapping("/sys/sensor/checkMessageUnique")
    @ResponseBody
    public String checkMessageUnique(SysSensorVO sensor) { return sysSensorService.checkMessageUnique(sensor);  }

    /**
     * 删除设备
     */
    @SysLog(title = "设备删除")
    @PostMapping("/sys/sensor/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        try
        {
            return toAjax(sysSensorService.deleteSensorByIds(ids));
        }
        catch (Exception e)
        {
            return error(e.getMessage());
        }
    }

    /**
     *  查询全部警报详细信息在主页地图上显示
     */
    @GetMapping("/sys/sensor/alarm")
    @ResponseBody
    public String smokeAlarm()
    {
        return sysSensorService.selectAlarmList();
    }
}