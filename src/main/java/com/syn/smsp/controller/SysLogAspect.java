package com.syn.smsp.controller;

import com.syn.smsp.service.SysDeptService;
import com.syn.smsp.service.SysMenuService;
import com.syn.smsp.service.SysOperLogService;
import com.syn.smsp.toor.ServletUtils;
import com.syn.smsp.toor.StringUtils;
import com.syn.smsp.util.ShiroUtils;
import com.syn.smsp.vo.SysDeptVO;
import com.syn.smsp.vo.SysMenuVO;
import com.syn.smsp.vo.SysOperLogVO;
import com.syn.smsp.vo.SysUserVO;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.Signature;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.AfterThrowing;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.aspectj.lang.reflect.MethodSignature;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.servlet.http.HttpServletRequest;
import java.lang.reflect.Method;
import java.util.Map;

/**
 *  日志管理保存
 *
 * @author huby
 * createDate  2019/6/3 0003  14:02
 */
@Aspect
@Component
public class SysLogAspect {

    @Autowired
    private SysOperLogService sysOperLogService;

    @Autowired
    private SysMenuService sysMenuService;

    @Autowired
    private SysDeptService sysDeptService;

    @Pointcut("@annotation(com.syn.smsp.controller.SysLog)")
    public void logPointCut() {

    }


    /**
     * 处理完请求后执行
     *
     * @param joinPoint 切点
     */
    @AfterReturning(pointcut = "logPointCut()")
    public void doAfterReturning(JoinPoint joinPoint)
    {
        handleLog(joinPoint, null);
    }

    /**
     * 拦截异常操作
     *
     * @param joinPoint 切点
     * @param e 异常
     */
    @AfterThrowing(value = "logPointCut()", throwing = "e")
    public void doAfterThrowing(JoinPoint joinPoint, Exception e)
    {
        handleLog(joinPoint, e);
    }

    protected void handleLog(final JoinPoint joinPoint, final Exception ec)
    {
        try
        {
            // 获得注解
            SysLog controllerLog = getAnnotationLog(joinPoint);
            if (controllerLog == null)
            {
                return;
            }

            HttpServletRequest request = ServletUtils.getRequest();
            Map<String, String[]> parameterMap=  request.getParameterMap();
            String RequestURI =request.getRequestURI();
            if((parameterMap.size()>0 && RequestURI.indexOf("/login")==-1 && RequestURI.indexOf("/list")==-1)||RequestURI.indexOf("/remove")>0){
                SysMenuVO menu = new SysMenuVO();
                String[] requestURI = RequestURI.split("/");
                if(requestURI.length>4){
                    menu.setUrl(requestURI[1]+"/"+requestURI[2]+"/"+requestURI[3]);
                }else{
                    menu.setUrl(requestURI[1]+"/"+requestURI[2]);
                }
                menu = sysMenuService.checkMenuNameUnique(menu);
                SysOperLogVO operLog = new SysOperLogVO();
                operLog.setTitle(menu.getMenuName()+"-"+controllerLog.title());
                if(RequestURI.indexOf("/add")>0){
                    operLog.setMethod(RequestURI);
                    operLog.setBusinessType(1);
                }else if(RequestURI.indexOf("/edit")>0){
                    operLog.setMethod(RequestURI);
                    operLog.setBusinessType(2);
                }else if(RequestURI.indexOf("/remove")>0){
                    operLog.setMethod(RequestURI);
                    operLog.setBusinessType(3);
                }else {
                    operLog.setMethod(RequestURI);
                    operLog.setBusinessType(0);
                }
                SysUserVO user = ShiroUtils.getUserEntity();
                operLog.setOperId(user.getUserId());
                operLog.setOperName(user.getUserName());
                operLog.setOperatorType(user.getUserId().intValue());
                operLog.setDeptId(user.getDeptId());
                if (ec != null)
                {
                    operLog.setStatus(1);
                    operLog.setErrorMsg(StringUtils.substring(ec.getMessage(), 0, 2000));
                }else{  operLog.setStatus(0); }
                operLog.setOperIp(getIpAdrress(ServletUtils.getRequest()));
                sysOperLogService.insertOperlog(operLog);
            }
        }catch (Exception e){
            e.printStackTrace();
        }
    }
    /**
     * 是否存在注解，如果存在就获取
     */
    private SysLog getAnnotationLog(JoinPoint joinPoint) throws Exception
    {
        Signature signature = joinPoint.getSignature();
        MethodSignature methodSignature = (MethodSignature) signature;
        Method method = methodSignature.getMethod();

        if (method != null)
        {
            return method.getAnnotation(SysLog.class);
        }
        return null;
    }

    private  String getIpAdrress(HttpServletRequest request) {
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