package com.syn.smsp.service.impl;

import com.syn.smsp.service.SysDictDataService;
import com.syn.smsp.toor.Convert;
import com.syn.smsp.util.GeneralDAO;
import com.syn.smsp.util.ShiroUtils;
import com.syn.smsp.vo.SysDictDataVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


/**
 * 字典 业务层处理
 *
 * @author huby
 */
@Service
public class SysDictDataServiceImpl implements SysDictDataService {
	@Autowired
	private GeneralDAO generalDAO;

	/**
	 * 根据条件分页查询字典数据
	 *
	 * @param dictData 字典数据信息
	 * @return 字典数据集合信息
	 */
	@Override
	public List<SysDictDataVO> selectDictDataList(SysDictDataVO dictData)
	{
		return generalDAO.queryList("sysDictDataDao.selectDictDataList",dictData);
	}

	/**
	 * 根据字典类型查询字典数据
	 *
	 * @param dictType 字典类型
	 * @return 字典数据集合信息
	 */
	@Override
	public List<SysDictDataVO> selectDictDataByType(String dictType)
	{
		SysDictDataVO dictData = new SysDictDataVO();
		dictData.setDictType(dictType);
		return generalDAO.queryList("sysDictDataDao.selectDictDataList",dictData);
	}

	/**
	 * 根据字典数据ID查询信息
	 *
	 * @param dictCode 字典数据ID
	 * @return 字典数据
	 */
	@Override
	public SysDictDataVO selectDictDataById(Long dictCode)
	{
		SysDictDataVO dictData = new SysDictDataVO();
		dictData.setDictCode(dictCode);
		return generalDAO.queryObject("sysDictDataDao.selectDictDataList",dictData);
	}

	/**
	 * 通过字典ID删除字典数据信息
	 *
	 * @param dictCode 字典数据ID
	 * @return 结果
	 */
	@Override
	public int deleteDictDataById(Long dictCode)
	{
		return generalDAO.deleteObject("sysDictDataDao.deleteDictDataById",dictCode);
	}

	/**
	 * 批量删除字典数据
	 *
	 * @param ids 需要删除的数据
	 * @return 结果
	 */
	@Override
	public int deleteDictDataByIds(String ids)
	{
		return generalDAO.deleteObject("sysDictDataDao.deleteDictDataByIds",Convert.toStrArray(ids));
	}

	/**
	 * 新增保存字典数据信息
	 *
	 * @param dictData 字典数据信息
	 * @return 结果
	 */
	@Override
	public int insertDictData(SysDictDataVO dictData)
	{
		dictData.setCreateBy(ShiroUtils.getUserEntity().getUserName());
		return generalDAO.save("sysDictDataDao.insertDictData",dictData);
	}

	/**
	 * 修改保存字典数据信息
	 *
	 * @param dictData 字典数据信息
	 * @return 结果
	 */
	@Override
	public int updateDictData(SysDictDataVO dictData)
	{
		dictData.setUpdateBy(ShiroUtils.getUserEntity().getUserName());
		return generalDAO.updateObject("sysDictDataDao.updateDictData",dictData);
	}

}
