package com.syn.smsp.service;
import com.syn.smsp.vo.SysDeptVO;
import com.syn.smsp.vo.Ztree;

import java.util.List;


/**
 *   部门管理
 *
 */
public interface SysDeptService {

    /**
     * 查询用户列表
     */
    List<SysDeptVO> selectDeptList(SysDeptVO dept);

    /**
     * 查询用户列表
     */
    List<SysDeptVO> selectDeptListById(SysDeptVO dept);

    /**
     * 根据部门ID查询信息
     *  deptId 部门ID
     * @return 部门信息
     */
    SysDeptVO selectDeptById(SysDeptVO dept);
    /**
     * 查询部门管理树
     *
     * @param dept 部门信息
     * @return 所有部门信息
     */
    List<Ztree> selectDeptTree(SysDeptVO dept);

    //部门增加
    int save(SysDeptVO dept);
    /**
     * 修改保存部门信息
     *
     * @param dept 部门信息
     * @return 结果
     */
    int updateDept(SysDeptVO dept);

    SysDeptVO checkDeptNameUnique(SysDeptVO dept);

    /**
     * 查询部门人数
     *
     * @param parentId 父部门ID
     * @return 结果
     */
    int selectDeptCount(Long parentId);

    /**
     * 查询部门是否存在用户
     *
     * @param deptId 部门ID
     * @return 结果 true 存在 false 不存在
     */
    boolean checkDeptExistUser(Long deptId);
    /**
     * 删除部门管理信息
     *
     * 部门ID
     * @return 结果
     */
    int deleteDeptById(Long deptId);
}
