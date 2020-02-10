package com.syn.smsp.util;

import com.syn.smsp.util.shiro.exception.BusinessException;
import com.syn.smsp.util.shiro.exception.MsgService;
import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.BadSqlGrammarException;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;


@Repository("GeneralDAO")
public class IbatisGeneralDAOImpl implements GeneralDAO {

    private static Logger _logger = LoggerFactory.getLogger(IbatisGeneralDAOImpl.class);

    private SqlSessionTemplate sqlSession;

    @Autowired
    public void setSqlSession(SqlSessionTemplate sqlMapClient) {
        this.sqlSession = sqlMapClient;
        _logger.debug("Mybatis数据库连接对象注入GeneralDAO完成");
    }

    public <T> T queryObject(String sqlId, Object param) {
        try {
            return sqlSession.selectOne(sqlId, param);
        } catch (Exception e) {
            throw handException(e);
        }
    }

    @Override
    public <T> List<T> queryList(String sqlId) {
        List<T> list = null;
        Map map = null;
        list = sqlSession.selectList(sqlId);
        return list;
    }

    public <T> List<T> queryForList(String sqlId,Object param) {
        List<T> list  = sqlSession.selectList(sqlId, param,new RowBounds(ActionUtil.getStart(), ActionUtil.getLimit()));
        Integer total = sqlSession.selectOne("systemMap.getListCount");
        ActionUtil.setTotal(total);
        return  list;
    }

    public <T> List<T> queryList(String sqlId,Object param) {
        List<T> list  = sqlSession.selectList(sqlId, param);
        return  list;
    }

    public <T> List<T> queryForList(String sqlId) {
        List<T> list = null;
        if (ActionUtil.isPage_app()) {//手机APP分页
            List<T> list2 = sqlSession.selectList(sqlId, new RowBounds(ActionUtil.getStart(), ActionUtil.getLimit()));
            if (ListUtil.isEmpty(list2)) return new ArrayList<T>();
            if ((ActionUtil.isSort_up() && (ActionUtil.isDirection_pre())) || (!ActionUtil.isSort_up() && (!ActionUtil.isDirection_pre()))) {
                list = new ArrayList<T>();
                for (int i = list2.size() - 1; i > -1; i--) list.add(list2.get(i));
            } else list = list2;
        } else if (ActionUtil.isPage_web()) //Web端分页
            list = sqlSession.selectList(sqlId, new RowBounds(ActionUtil.getStart(), ActionUtil.getLimit()));
        if (ActionUtil.isPage_app() || ActionUtil.isPage_web())
            list = sqlSession.selectList(sqlId, new RowBounds(ActionUtil.getStart(), ActionUtil.getLimit()));
        else list = sqlSession.selectList(sqlId);
        Integer total = sqlSession.selectOne("systemMap.getListCount");
        ActionUtil.setTotal(total);
        return list;
    }


    public <T> T queryObject(String sqlId) {
        try {
            sqlId = sqlSelector(sqlId);
            return sqlSession.selectOne(sqlId);
        } catch (Exception e) {
            throw handException(e);
        }
    }


    public void save(String sqlId) {
        try {
            sqlId = sqlSelector(sqlId);
            sqlSession.insert(sqlId);
        } catch (BadSqlGrammarException e) {
            throw handException(e);
        }
    }


    public int save(String sqlId, Object param) {
        try {
            sqlId = sqlSelector(sqlId);
            return sqlSession.insert(sqlId, param);
        } catch (Exception e) {
            throw handException(e);
        }
    }


    public Integer insertObjectReturnID(String sqlId, Object param) {
        try {
            sqlId = sqlSelector(sqlId);
            sqlSession.insert(sqlId, param);
            return sqlSession.selectOne("systemMap.getAutoIncrementID");
        } catch (Exception e) {
            throw handException(e);
        }
    }

    public int deleteObject(String sqlId) {
        try {
            sqlId = sqlSelector(sqlId);
            return sqlSession.delete(sqlId);
        } catch (BadSqlGrammarException e) {
            throw handException(e);
        }
    }


    public int deleteObject(String sqlId, Object param) {
        try {
            sqlId = sqlSelector(sqlId);
            return sqlSession.delete(sqlId, param);
        } catch (Exception e) {
            throw handException(e);
        }
    }


    public int updateObject(String sqlId) {
        try {
            sqlId = sqlSelector(sqlId);
            return sqlSession.update(sqlId);
        } catch (BadSqlGrammarException e) {
            throw handException(e);
        }
    }


    public int updateObject(String sqlId, Object param) {
        try {
            sqlId = sqlSelector(sqlId);
            return sqlSession.update(sqlId, param);
        } catch (Exception e) {
            throw handException(e);
        }
    }


    private BusinessException handException(Exception e) {
        if (e.getClass().toString().contains("DuplicateKeyException")) {
            String cause = e.getCause().toString();
            int index = cause.lastIndexOf("for key '");
            String indexName = cause.substring(index + 9, cause.length() - 1);
            return new BusinessException(MsgService.getMsg("DB_" + indexName));
        }
        if (e.getClass().toString().contains("BadSqlGrammarException")) {
            _logger.error(((BadSqlGrammarException) e).getSQLException().getErrorCode() + "");
            _logger.error(((BadSqlGrammarException) e).getSQLException().getMessage());
        }
        _logger.error(e.getMessage());
        e.printStackTrace();
        return new BusinessException("数据异常，请刷新后重试...");
    }


    private String sqlSelector(String sqlId) {
        return sqlId;
    }

    public <T> void batchInsert(String sqlId, List<T> param) {
        try {
            sqlId = sqlSelector(sqlId);
            sqlSession.insert(sqlId, param);
        } catch (Exception e) {
            throw handException(e);
        }

    }

    public <T> void batchDelete(String sqlId, List<T> param) {
        // TODO Auto-generated method stub

    }

    public <T> void batchUpdate(String sqlId, Map param) {
        // TODO Auto-generated method stub

    }

    public void executeSql(String sql, Object... params) {
        // TODO Auto-generated method stub

    }

    public List<Map<String, Object>> executeQuery(String sql, Object... params) {
        // TODO Auto-generated method stub
        return null;
    }

    public Object executeObject(String sql, Object... params) {
        // TODO Auto-generated method stub
        return null;
    }
}