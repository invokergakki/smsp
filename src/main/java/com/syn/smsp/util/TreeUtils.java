package com.syn.smsp.util;

import com.syn.smsp.vo.SysMenuVO;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/**
 * 权限数据处理
 *
 * @author huby
 * createDate  2019/5/22 0022  13:36
 */
public class TreeUtils {

    /**
     * 根据父节点的ID获取所有子节点
     *
     * @param list 分类表
     * @param parentId 传入的父节点ID
     * @return String
     */
    public static List<SysMenuVO> getChildPerms(List<SysMenuVO> list, int parentId)
    {
        List<SysMenuVO> returnList = new ArrayList<SysMenuVO>();
        for (Iterator<SysMenuVO> iterator = list.iterator(); iterator.hasNext();)
        {
            SysMenuVO t = (SysMenuVO) iterator.next();
            // 一、根据传入的某个父节点ID,遍历该父节点的所有子节点
            if (t.getParentId() == parentId)
            {
                recursionFn(list, t);
                returnList.add(t);
            }
        }
        return returnList;
    }

    /**
     * 递归列表
     *
     * @param list
     * @param t
     */
    private static void recursionFn(List<SysMenuVO> list, SysMenuVO t)
    {
        // 得到子节点列表
        List<SysMenuVO> childList = getChildList(list, t);
        t.setChildren(childList);
        for (SysMenuVO tChild : childList)
        {
            if (hasChild(list, tChild))
            {
                // 判断是否有子节点
                Iterator<SysMenuVO> it = childList.iterator();
                while (it.hasNext())
                {
                    SysMenuVO n = (SysMenuVO) it.next();
                    recursionFn(list, n);
                }
            }
        }
    }

    /**
     * 得到子节点列表
     */
    private static List<SysMenuVO> getChildList(List<SysMenuVO> list, SysMenuVO t)
    {

        List<SysMenuVO> tlist = new ArrayList<SysMenuVO>();
        Iterator<SysMenuVO> it = list.iterator();
        while (it.hasNext())
        {
            SysMenuVO n = (SysMenuVO) it.next();
            if (n.getParentId().longValue() == t.getMenuId().longValue())
            {
                tlist.add(n);
            }
        }
        return tlist;
    }

    List<SysMenuVO> returnList = new ArrayList<SysMenuVO>();

    /**
     * 根据父节点的ID获取所有子节点
     *
     * @param list 分类表
     * @param typeId 传入的父节点ID
     * @param prefix 子节点前缀
     */
    public List<SysMenuVO> getChildPerms(List<SysMenuVO> list, int typeId, String prefix)
    {
        if (list == null)
        {
            return null;
        }
        for (Iterator<SysMenuVO> iterator = list.iterator(); iterator.hasNext();)
        {
            SysMenuVO node = (SysMenuVO) iterator.next();
            // 一、根据传入的某个父节点ID,遍历该父节点的所有子节点
            if (node.getParentId() == typeId)
            {
                recursionFn(list, node, prefix);
            }
            // 二、遍历所有的父节点下的所有子节点
            /*
             * if (node.getParentId()==0) { recursionFn(list, node); }
             */
        }
        return returnList;
    }

    private void recursionFn(List<SysMenuVO> list, SysMenuVO node, String p)
    {
        // 得到子节点列表
        List<SysMenuVO> childList = getChildList(list, node);
        if (hasChild(list, node))
        {
            // 判断是否有子节点
            returnList.add(node);
            Iterator<SysMenuVO> it = childList.iterator();
            while (it.hasNext())
            {
                SysMenuVO n = (SysMenuVO) it.next();
                n.setMenuName(p + n.getMenuName());
                recursionFn(list, n, p + p);
            }
        }
        else
        {
            returnList.add(node);
        }
    }

    /**
     * 判断是否有子节点
     */
    private static boolean hasChild(List<SysMenuVO> list, SysMenuVO t)
    {
        return getChildList(list, t).size() > 0 ? true : false;
    }
}

