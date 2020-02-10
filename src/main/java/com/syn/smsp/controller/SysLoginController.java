package com.syn.smsp.controller;

import com.google.code.kaptcha.Constants;
import com.google.code.kaptcha.Producer;
import com.syn.smsp.service.SysDeptService;
import com.syn.smsp.service.SysLogininforService;
import com.syn.smsp.service.SysMenuService;
import com.syn.smsp.service.WarningManagerService;
import com.syn.smsp.toor.AjaxResult;
import com.syn.smsp.toor.ServletUtils;
import com.syn.smsp.toor.StringUtils;
import com.syn.smsp.util.ShiroUtils;
import com.syn.smsp.vo.*;
import org.apache.shiro.authc.*;
import org.apache.shiro.crypto.hash.Sha256Hash;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.List;

/**
 * 登录相关
 * @author huby
 */
@Controller
public class SysLoginController {

	@Autowired
	private SysMenuService sysMenuService;

	@Autowired
	private SysLogininforService sysLogininforService;

	@Autowired
	private Producer producer;

    @Autowired
    private WarningManagerService waringManagerService;

    @Autowired
    private SysDeptService sysDeptService;

	@RequestMapping("captcha.jpg")
	public void captcha(HttpServletResponse response)throws ServletException, IOException {
        response.setHeader("Cache-Control", "no-store, no-cache");
        response.setContentType("image/jpeg");

        //生成文字验证码
        String text = producer.createText();
        //生成图片验证码
        BufferedImage image = producer.createImage(text);
        //保存到shiro session
        ShiroUtils.setSessionAttribute(Constants.KAPTCHA_SESSION_KEY, text);

        ServletOutputStream out = response.getOutputStream();
        ImageIO.write(image, "jpg", out);
		out.flush();
	}

	@RequestMapping(value = "/login",method = RequestMethod.GET)
	public String login(){
		return "login";
	}

	@RequestMapping(value = "/",method = RequestMethod.GET)
	public String index(){
		return "redirect:sys/index";
	}

	/**
	 * 登录
	 */
	@ResponseBody
	@RequestMapping(value = "/sys/login", method = RequestMethod.POST)
	public Object login(String username, String password, String captcha)throws IOException {
		String kaptcha = ShiroUtils.getKaptcha(Constants.KAPTCHA_SESSION_KEY);
		String url = ServletUtils.getRequest().getRequestURI();
		String url0 = ServletUtils.getRequest().getRemoteAddr();

		String loginToken = "";
		String msg = "用户或密码错误";
		HttpServletRequest request = ServletUtils.getRequest();
		if(!captcha.equalsIgnoreCase(kaptcha)){
			insertLogininfor("1","登录失败验证码不正确",getIpAdrress(request),username);
			return AjaxResult.error("验证码不正确");
		}
		try{
			Subject subject = ShiroUtils.getSubject();
			//sha256加密
			password = new Sha256Hash(password).toHex();

			UsernamePasswordToken token = new UsernamePasswordToken(username, password);
			loginToken = username + "|" +password;
			subject.login(token);
            insertLogininfor("0","登陆成功",getIpAdrress(request),username);
		}catch (UnknownAccountException e) {
			//return ResponseUtils.sendFailure(e.getMessage(),500);
			msg = e.getMessage();
				return AjaxResult.error(msg);
		}catch (IncorrectCredentialsException e) {
			//return ResponseUtils.sendFailure(e.getMessage(),500);
			insertLogininfor("1","登陆失败",getIpAdrress(request),username);
			 msg = e.getMessage();
			return AjaxResult.error(msg);
		}catch (LockedAccountException e) {
			e.printStackTrace();
			//return ResponseUtils.sendFailure(e.getMessage(),500);
			msg = "账户验证失败";
			return AjaxResult.error(msg);
		}catch (AuthenticationException e) {
			//return ResponseUtils.sendFailure("账户验证失败",500);
			msg = e.getMessage();
			return AjaxResult.error(msg);
		}
		return AjaxResult.success();
	}

	// 系统首页
	@GetMapping("/sys/index")
	public String index(ModelMap model,HttpSession httpSession)
	{
		SysUserVO user =  ShiroUtils.getUserEntity();
		List<SysMenuVO> menus = sysMenuService.selectMenusByUser(user);
		model.put("menus", menus);
		String avatar = user.getAvatar();
		avatar = avatar.replace("/","_").replace("\\","_");
		user.setAvatar(avatar);
		model.put("user",user);
		return "/sys/index";
	}
	/**
	 * 退出
	 */
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout() {
		insertLogininfor("0","退出登陆成功",getIpAdrress(ServletUtils.getRequest()),ShiroUtils.getUserEntity().getUserName());
		ShiroUtils.logout();
		return "redirect:login";
	}

	/**
	 * 首页
	 */
	@RequestMapping(value = "/sys/main", method = RequestMethod.GET)
	public String main(ModelMap mmap) {
		mmap.put("warning",  getWaringManager());
		mmap.put("warningNum",  selectWarnningStatus());
		return "main";
	}


	public WarningVO selectWarnningStatus() {
		WarningVO warningNum = waringManagerService.selectWarnningStatus();
		if(null == warningNum.getCallNum()){
			warningNum.setCallNum("0");
		}
		if(null == warningNum.getFaultNum()){
			warningNum.setFaultNum("0");
		}
		if(null == warningNum.getNormalNum()){
			warningNum.setNormalNum("0");
		}
		if(null == warningNum.getLowtensionNum()){
			warningNum.setLowtensionNum("0");
		}
		if(null == warningNum.getOnlineNum()){
			warningNum.setOnlineNum("0");
		}
		if(null == warningNum.getTeardownNum()){
			warningNum.setTeardownNum("0");
		}
		return warningNum;
	}

	public List<WarningVO> getWaringManager(){
       Long deptId = ShiroUtils.getUserEntity().getDeptId();
       WarningVO warningVO = new WarningVO();
       warningVO.setStatus("0");
       if(deptId !=10L){
           SysDeptVO dept = new SysDeptVO();
           dept.setDeptId(deptId);
           SysDeptVO deptVO = sysDeptService.selectDeptById(dept);
           if(StringUtils.isNotNull(deptVO)  && deptVO.getParentId() != 0L){
               warningVO.setDeptId(deptVO.getParentId());
           }else{
               warningVO.setDeptId(deptVO.getDeptId());
           }
       }
       return waringManagerService.getWarningList(warningVO);
   }

   public void insertLogininfor(String status,String msg,String ip,String username){
	   SysLogininforVO logininfor = new SysLogininforVO();
	   logininfor.setLoginName(username);
	   logininfor.setStatus(status);
	   logininfor.setIpaddr(ip);
	   logininfor.setMsg(msg);
	   if(StringUtils.isNotNull(ShiroUtils.getUserEntity())){
		   logininfor.setDeptId(ShiroUtils.getUserEntity().getDeptId());
	   }
	   sysLogininforService.insertLogininfor(logininfor);
   }

	private static String getIpAdrress(HttpServletRequest request) {
		String Xip = request.getHeader("X-Real-IP");
		String XFor = request.getHeader("X-Forwarded-For");
		if(StringUtils.isNotEmpty(XFor) && !"unKnown".equalsIgnoreCase(XFor)){
			//多次反向代理后会有多个ip值，第一个ip才是真实ip
			int index = XFor.indexOf(",");
			if(index != -1){
				return XFor.substring(0,index);
			}else{
				return XFor;
			}
		}
		XFor = Xip;
		if(StringUtils.isNotEmpty(XFor) && !"unKnown".equalsIgnoreCase(XFor)){
			return XFor;
		}
		if (StringUtils.isBlank(XFor) || "unknown".equalsIgnoreCase(XFor)) {
			XFor = request.getHeader("Proxy-Client-IP");
		}
		if (StringUtils.isBlank(XFor) || "unknown".equalsIgnoreCase(XFor)) {
			XFor = request.getHeader("WL-Proxy-Client-IP");
		}
		if (StringUtils.isBlank(XFor) || "unknown".equalsIgnoreCase(XFor)) {
			XFor = request.getHeader("HTTP_CLIENT_IP");
		}
		if (StringUtils.isBlank(XFor) || "unknown".equalsIgnoreCase(XFor)) {
			XFor = request.getHeader("HTTP_X_FORWARDED_FOR");
		}
		if (StringUtils.isBlank(XFor) || "unknown".equalsIgnoreCase(XFor)) {
			XFor = request.getRemoteAddr();
		}
		if(XFor.equals("0:0:0:0:0:0:0:1")){
			XFor="127.1.1.0";
		}
		return XFor;
	}
}
