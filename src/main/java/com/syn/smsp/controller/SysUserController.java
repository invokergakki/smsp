package com.syn.smsp.controller;

import com.syn.smsp.config.UserConstants;
import com.syn.smsp.service.SysDeptService;
import com.syn.smsp.service.SysRoleService;
import com.syn.smsp.service.SysUserService;
import com.syn.smsp.toor.AjaxResult;
import com.syn.smsp.toor.StringUtils;
import com.syn.smsp.toor.page.TableDataInfo;
import com.syn.smsp.util.DateUtils;
import com.syn.smsp.util.Md5Utils;
import com.syn.smsp.util.MimeTypeUtils;
import com.syn.smsp.util.ShiroUtils;
import com.syn.smsp.vo.SysDeptVO;
import com.syn.smsp.vo.SysUserVO;
import net.coobird.thumbnailator.Thumbnails;
import org.apache.shiro.crypto.hash.Sha256Hash;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Properties;

/**
 * 用户信息
 * 
 * @author huby
 */
@Controller
@RequestMapping("/sys/user")
public class SysUserController extends BaseController
{
    private String prefix = "/sys/user";

    @Autowired
    private SysUserService sysUserService;

    @Autowired
    private SysRoleService sysRoleService;

    @Autowired
    private SysDeptService sysDeptService;

    @Value("${windows.upload.img}")
    private String windowsUploadImg;

    @Value("${Linux.upload.img}")
    private String linuxUploadImg;

    // 用户管理页面
    @RequestMapping(value = "/user", method = {RequestMethod.GET,RequestMethod.POST})
    public String user()
    {
        return prefix + "/user";
    }

    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(SysUserVO user)
    {
          Long deptId = ShiroUtils.getUserEntity().getDeptId();
        if( deptId !=10L && StringUtils.isNull(user.getDeptId())){
            SysDeptVO dept = new SysDeptVO();
            dept.setDeptId(deptId);
            SysDeptVO deptVO = sysDeptService.selectDeptById(dept);
            if(StringUtils.isNotNull(deptVO)  && deptVO.getParentId() != 0L){
                user.setDeptId(deptVO.getParentId());
            }else{
                user.setDeptId(deptVO.getDeptId());
            }
        }
        startPage();
        List<SysUserVO> list = sysUserService.selectUserList(user);
        return getDataTable(list);
    }


    /**
     * 新增用户
     */
    @GetMapping("/add")
    public String add(ModelMap mmap)
    {
        mmap.put("sysRoles", sysRoleService.selectRoleAll());
        return prefix + "/add";
    }

    /**
     * 新增保存用户
     */
    @SysLog(title = "用户新增")
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(SysUserVO user)
    {
        if (StringUtils.isNotNull(user.getUserId()) && SysUserVO.isAdmin(user.getUserId()))
        {
            return error("不允许修改超级管理员用户");
        }
        //sha256加密
        user.setPassword(new Sha256Hash(user.getPassword()).toHex());
        return toAjax(sysUserService.insertUser(user));
    }

    /**
     * 修改用户
     */
    @GetMapping("/edit/{userId}")
    public String edit(@PathVariable("userId") Long userId, ModelMap mmap)
    {
        mmap.put("user", sysUserService.selectUserById(userId));
        mmap.put("sysRoles", sysRoleService.selectRolesByUserId(userId));
        //mmap.put("posts", postService.selectPostsByUserId(userId));
        return prefix + "/edit";
    }

    /**
     * 修改用户
     */
    @SysLog(title = "用户修改")
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(SysUserVO user)
    {
        if (StringUtils.isNotNull(user.getUserId()) && SysUserVO.isAdmin(user.getUserId()))
        {
            return error("不允许修改超级管理员用户");
        }
        return toAjax(sysUserService.updateUser(user));
    }

    @GetMapping("/resetPwd/{userId}")
    public String resetPwd(@PathVariable("userId") Long userId, ModelMap mmap)
    {
        mmap.put("user", sysUserService.selectUserById(userId));
        return prefix + "/resetPwd";
    }

    @SysLog(title = "密码重置")
    @PostMapping("/resetPwd")
    @ResponseBody
    public AjaxResult resetPwd(SysUserVO user)
    {
        return toAjax(sysUserService.resetUserPwd(user));
    }

    /**
     * 删除用户
     */
    @SysLog(title = "用户删除")
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        try
        {
            return toAjax(sysUserService.deleteUserByIds(ids));
        }
        catch (Exception e)
        {
            return error(e.getMessage());
        }
    }

    /**
     * 校验用户名称、手机号码、email是否唯一
     */
    @PostMapping("/checkMessageUnique")
    @ResponseBody
    public String checkMessageUnique(SysUserVO user)
    {
        return sysUserService.checkMessageUnique(user);
    }
    /**
     * 用户状态修改
     */
    @SysLog(title = "用户状态修改")
    @PostMapping("/changeStatus")
    @ResponseBody
    public AjaxResult changeStatus(SysUserVO user)
    {
        return toAjax(sysUserService.updateUserStatus(user));
    }

    @GetMapping("/profile")
    public String profile(ModelMap mmap)
    {
        SysUserVO user = new SysUserVO();
         user = ShiroUtils.getUserEntity();
        SysDeptVO dept = new SysDeptVO();
        dept.setDeptId(user.getDeptId());
        dept = sysDeptService.selectDeptById(dept);
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String str = sdf.format(user.getCreateTime());
        user.setRemark(dept.getDeptName());
        user.setSalt(str);
        String avatar = user.getAvatar();
        avatar = avatar.replace("/","_").replace("\\","_");
        user.setAvatar(avatar);
        mmap.put("user", user);
        return prefix + "/profile/profile";
    }

    @GetMapping("/profile/resetPwd")
    public String resetPwd(ModelMap mmap)
    {
        SysUserVO user = getSysUser();
        mmap.put("user", sysUserService.selectUserById(user.getUserId()));
        return prefix + "/profile/resetPwd";
    }

    @SysLog(title = "用户密码修改")
    @PostMapping("/profile/resetPwd")
    @ResponseBody
    public AjaxResult resetPwd(String oldPassword, String newPassword)
    {
        SysUserVO user = new SysUserVO();
        user.setUserId(ShiroUtils.getUserEntity().getUserId());
        user.setPassword(new Sha256Hash(newPassword).toHex());
        int updateCount = sysUserService.updateUserInfo(user);
        if (updateCount==0)
        {
            return error("修改密码失败");
        }
        return success();
    }
    @SysLog(title = "用户信息修改")
    @PostMapping("/profile/update")
    @ResponseBody
    public AjaxResult profileUpdate(SysUserVO user)
    {
        SysUserVO currentUser = ShiroUtils.getUserEntity();
        currentUser.setUserName(user.getUserName());
        currentUser.setEmail(user.getEmail());
        currentUser.setPhonenumber(user.getPhonenumber());
        currentUser.setSex(user.getSex());
        currentUser.setLoginName(user.getLoginName());
        if (sysUserService.updateUserInfo(currentUser) > 0)
        {
            return success();
        }
        return error();
    }
    @GetMapping("/profile/checkPassword")
    @ResponseBody
    public boolean checkPassword(String password)
    {
        SysUserVO user = new SysUserVO();
        user.setUserId(ShiroUtils.getUserEntity().getUserId());
        user.setPassword(new Sha256Hash(password).toHex());
        String count = sysUserService.checkPasswordUnique(user);
        return count.equals(UserConstants.USER_PHONE_NOT_UNIQUE);
    }
    /**
     * 修改头像
     */
    @GetMapping("/profile/avatar")
    public String avatar(ModelMap mmap)
    {
        SysUserVO user = getSysUser();
        mmap.put("user", sysUserService.selectUserById(user.getUserId()));
        return prefix + "/profile/avatar";
    }
    /**
     * 保存头像
     */
    @SysLog(title = "个人信息")
    @PostMapping("/profile/updateAvatar")
    @ResponseBody
    public AjaxResult updateAvatar(HttpServletRequest req, @RequestParam("avatarfile") MultipartFile file)
    {
        SysUserVO currentUser = getSysUser();
        try {
            String filename =  getFileName(file);
            String contextPath = getFilePath();
            SysDeptVO dept = new SysDeptVO();
            dept.setDeptId(currentUser.getDeptId());
            SysDeptVO deptVO = sysDeptService.selectDeptById(dept);
            String path=null;
            if(StringUtils.isNotNull(deptVO) && StringUtils.isNotNull(deptVO.getParentId())  && StringUtils.isNotNull(deptVO.getDeptId()) ){
                if(deptVO.getParentId()!=deptVO.getDeptId() && deptVO.getDeptId()!=10 && deptVO.getParentId()!=0){
                    path =deptVO.getParentId()+"/"+deptVO.getDeptId()+"/"+currentUser.getUserName();
                }else{
                    path =deptVO.getDeptId()+"/"+currentUser.getUserName();
                }
            }
            path = path + File.separator + filename;
            String destFileName = contextPath + path;
            File destFile = new File(destFileName);
            destFile.getParentFile().mkdirs();
            //System.out.println("图片大小："+file.getOriginalFilename().length());
            //按比例压缩
            //Thumbnails.of(file.getInputStream()).scale(1f).outputQuality(1f).toFile(destFileName);//filePath:上传图片的路径eg:  xxx/xxx/xxx.jpg
            //按尺寸压缩
            //Thumbnails.of(file.getInputStream()).size(100,100).keepAspectRatio(false).toFile(destFileName);
            file.transferTo(destFile);
            currentUser.setAvatar(path);
            sysUserService.updateUserInfo(currentUser);
            return success();
        } catch (FileNotFoundException e) {
            e.printStackTrace();
            return error();
        } catch (IOException e) {
            e.printStackTrace();
            return error();
        }
    }
    /**
     * 获取图片名
     */
    public String getFileName(MultipartFile file){
        String filename = file.getOriginalFilename();
        String extension = MimeTypeUtils.getExtension(file.getContentType());
        filename = filename.replace("_", " ");
        filename = Md5Utils.hash(filename + System.nanoTime());
        filename = filename+ "." + extension;
        return filename;
    }
    /**
     * 获取保存图片路径
     */
    public String getFilePath(){
        String contextPath = null;
        Properties prop = System.getProperties();
        String os = prop.getProperty("os.name");
        if (os != null && os.toLowerCase().indexOf("linux") > -1) {//Linux 环境
            contextPath = linuxUploadImg;
        } else {//Windows 环境
            contextPath = windowsUploadImg;
        }
        return contextPath;
    }
    /**
     * 图片显示
     * @param pic_path
     * @return
     */
    @RequestMapping(value = "/read/uploadPic", method = {RequestMethod.POST, RequestMethod.GET})
    public void uploadPic(String pic_path, HttpServletResponse response){
        FileInputStream file = null;
        try {
            //byte[] filePath = Base64.getDecoder().decode(pic_path);
            //String real_path = new String(pic_path, "utf-8");
            String path = getFilePath();
            pic_path = path+pic_path.replace("_","/");
            String real_path = pic_path;
            file = new FileInputStream(real_path);
            int size = file.available(); // 得到文件大小
            byte data[] = new byte[size];
            file.read(data); // 读数据
            file.close();
            if(!StringUtils.isBlank(real_path)){
                String theEnd = real_path.substring(real_path.length()-3,real_path.length());
                if(theEnd.equals("mp3")){
                    response.setContentType("audio/mp3"); // 设置返回的文件类型
                }else if(theEnd.equals("mp4")){
                    response.setContentType("video/*"); // 设置返回的文件类型
                }else{
                    response.setContentType("image/*"); // 设置返回的文件类型
                }
            }
            OutputStream toClient = response.getOutputStream(); // 得到向客户端输出二进制数据的对象
            toClient.write(data); // 输出数据
            toClient.close();
            file.close();
        } catch (FileNotFoundException e) {
           // e.printStackTrace();
        } catch (IOException e) {
           // e.printStackTrace();
        }
    }
}