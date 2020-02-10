package com.syn.smsp.util;

import java.util.List;
import java.util.Map;

/*****************************************************************
 * Mybatis数据库访问通用接口，利用此接口只需要编写SQLMap文件就可以直接在业务类中操作数据库，
 * 无需产生多余的Dao类，方便数据库框架管理
 *****************************************************************/
public interface GeneralDAO {
	/**
	 * 查询单条数据库记录（无参数）
	 * 
	 * @author chenth
	 * @sqlId配置文件中SQLID
	 * @return返回记录对象
	 */
	public <T> T queryObject(String sqlId);
	public <T> List<T> queryList(String sqlId);
	/**
	 * 查询单条数据库记录（有参数）
	 * @author chenth
	 * @param sqlId配置文件中SQLID
	 * @param param查询参数
	 * @return返回记录对象
	 */
	public <T> T queryObject(String sqlId, Object param);

	/**
	 * 查询多条数据库记录（无参数）
	 * @author chenth
	 * @param sqlId配置文件中SQLID
	 * @return返回记录对象
	 */
	public <T> List<T> queryForList(String sqlId);
	public <T> List<T> queryList(String sqlId, Object param);

	/**
	 * 查询多条数据库记录（有参数）
	 * @author chenth
	 * @param sqlId配置文件中SQLID
	 * @param param查询参数
	 * @return返回记录对象
	 */

	/**
	 * 不分页
	 * @param sqlId
	 * @param param
	 * @return
     */
	public <T> List<T> queryForList(String sqlId, Object param);

	/**
	 * 插入单条数据库记录（无参数）
	 * @author chenth
	 * @param sqlId配置文件中SQLID
	 */
	public void save(String sqlId);

	/**
	 * 插入单条数据库记录（有参数）
	 * @author chenth
	 * @param sqlId配置文件中SQLID
	 */
	public int save(String sqlId, Object param);

	/**
	 * 批量插入数据
	 * @author chenth
	 * @param <T>
	 * @param sqlId配置文件中SQLID
	 */
	public <T> void batchInsert(String sqlId, List<T> param);

	/**
	 * 删除数据库记录（无参数）
	 * @author chenth
	 * @param sqlId配置文件中SQLID
	 * @return返回删除的记录数
	 */
	public int deleteObject(String sqlId);

	/**
	 * 删除数据库记录（有参数）
	 * @author chenth
	 * @param sqlId配置文件中SQLID
	 * @return返回删除的记录数
	 */
	public int deleteObject(String sqlId, Object param);

	/**
	 * 批量删除
	 * @author chenth
	 * @param <T>
	 * @param sqlIdsqlId配置文件中SQLID
	 * @param param删除参数
	 * @return返回删除的总记录数
	 */
	public <T> void batchDelete(String sqlId, List<T> param);

	/**
	 * 更新数据库记录（无参数）
	 * @author chenth
	 * @param sqlId配置文件中SQLID
	 * @return返回更新的记录数
	 */
	public int updateObject(String sqlId);

	/**
	 * 更新数据库记录（有参数）
	 * @author chenth
	 * @dsqlId配置文件中SQLID
	 * @param更新参数
	 * @return返回更新的记录数
	 */
	public int updateObject(String sqlId, Object param);

	/**
	 * 批量更新
	 * @author chenth
	 * @param <T>
	 * @param sqlIdsqlId配置文件中SQLID
	 * @param param更新参数
	 * @return返回更新的总记录数
	 */
	public <T> void batchUpdate(String sqlId, Map param);

	/**
	 * 执行SQL语句
	 * @param sql
	 * @param params
	 */
	public void executeSql(String sql, Object... params);
	/**
	 * 查询SQL语句
	 * @param sql
	 * @param params
	 * @return
	 */
	public List<Map<String,Object>> executeQuery(String sql, Object... params);
	/**
	 * 查询一个值
	 * @param sql
	 * @param params
	 * @return
	 */
	public Object executeObject(String sql, Object... params);
	
	/**
	 * 查询，并返回自动生成的ID
	 * @param sqlId
	 * @param param
	 * @return
	 */
	public Integer insertObjectReturnID(String sqlId, Object param);
}
