package demomaster.serviceImpl;


import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;
import demomaster.vo.TSystemParamVo;
import demomaster.dao.TSystemParamDAO;
import demomaster.service.TSystemParamService;
import demomaster.vo.plugin.TSystemParamPriVo;
import demomaster.vo.plugin.TSystemParamNoPriVo;



/**
 * 表名称      :t_system_param
 * 表类型      :BASE TABLE
 * 表引擎      :InnoDB
 * 表版本      :10
 * 行格式      :Dynamic
 * 表创建      :2020-5-12
 * 字符集      :utf8mb4_general_ci
 * 表注释      :系统参数表
 */
@Service
public class TSystemParamServiceImpl implements TSystemParamService {

    @Autowired
    private TSystemParamDAO dao;

    /**
     * insert
     */
    @Override
    public boolean insert(TSystemParamVo vo) {

        return dao.insert(vo) > 0 ? true : false;

    }

    /**
     * insert vos 批量插入
     */
    @Override
    public boolean insert(List<TSystemParamVo> vos) {

        return dao.inserts(vos) > 0 ? true : false;

    }

    /**
     * 查询base
     */
    @Override
    public List<TSystemParamVo> queryBase(TSystemParamVo query) {

        return dao.queryBase(query);

    }

    /**
     * update base (exclude value is null or "")
     */
    @Override
    public boolean updateBase(TSystemParamVo source, TSystemParamVo target) {

        return dao.updateBase(source, target) > 0 ? true : false;

    }

    /**
     * update base (include value is null or "")
     */
    @Override
    public boolean updateBaseIncludeNull(TSystemParamVo source, TSystemParamVo target) {

        return dao.updateBaseIncludeNull(source, target) > 0 ? true : false;

    }

    /**
     * 删除base
     */
    @Override
    public boolean deleteBase(TSystemParamVo vo) {

        return dao.deleteBase(vo) > 0 ? true : false;

    }


    /**
     * 根据PrimaryKey查询
     * <p>
     * paramId  参数id
     */
    @Override
    public TSystemParamVo queryByPrimaryKey(String paramId) {

        return dao.queryByPrimaryKey(paramId);

    }

    /**
     * 根据PrimaryKey删除
     * <p>
     * paramId : 参数id
     * @param paramId
     * 
     */
    @Override
    public boolean deleteByPrimaryKey(String paramId) {

        return dao.deleteByPrimaryKey(paramId) > 0 ? true : false;

    }

    /**
     * 根据PrimaryKey更新，会根据主键去更新其他的值(空值不覆盖有值)
     * <p>
     * paramId : 参数id
     * @param paramId
     * 
     */
    @Override
    public boolean updateByPrimaryKey(TSystemParamNoPriVo source,TSystemParamPriVo target){

        return dao.updateByPrimaryKey(source,target) > 0 ? true : false;

    }


}
