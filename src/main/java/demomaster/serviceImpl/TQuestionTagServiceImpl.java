package demomaster.serviceImpl;


import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;
import demomaster.vo.TQuestionTagVo;
import demomaster.dao.TQuestionTagDAO;
import demomaster.service.TQuestionTagService;
import demomaster.vo.plugin.TQuestionTagPriVo;
import demomaster.vo.plugin.TQuestionTagNoPriVo;



/**
 * 表名称      :t_question_tag
 * 表类型      :BASE TABLE
 * 表引擎      :InnoDB
 * 表版本      :10
 * 行格式      :Dynamic
 * 表创建      :2020-5-13
 * 字符集      :utf8_bin
 * 表注释      :关联问题和tag
 */
@Service
public class TQuestionTagServiceImpl implements TQuestionTagService {

    @Autowired
    private TQuestionTagDAO dao;

    /**
     * insert
     */
    @Override
    public boolean insert(TQuestionTagVo vo) {

        return dao.insert(vo) > 0 ? true : false;

    }

    /**
     * insert vos 批量插入
     */
    @Override
    public boolean insert(List<TQuestionTagVo> vos) {

        return dao.inserts(vos) > 0 ? true : false;

    }

    /**
     * 查询base
     */
    @Override
    public List<TQuestionTagVo> queryBase(TQuestionTagVo query) {

        return dao.queryBase(query);

    }

    /**
     * update base (exclude value is null or "")
     */
    @Override
    public boolean updateBase(TQuestionTagVo source, TQuestionTagVo target) {

        return dao.updateBase(source, target) > 0 ? true : false;

    }

    /**
     * update base (include value is null or "")
     */
    @Override
    public boolean updateBaseIncludeNull(TQuestionTagVo source, TQuestionTagVo target) {

        return dao.updateBaseIncludeNull(source, target) > 0 ? true : false;

    }

    /**
     * 删除base
     */
    @Override
    public boolean deleteBase(TQuestionTagVo vo) {

        return dao.deleteBase(vo) > 0 ? true : false;

    }


    /**
     * 根据PrimaryKey查询
     * <p>
     * id  uuid
     */
    @Override
    public TQuestionTagVo queryByPrimaryKey(String id) {

        return dao.queryByPrimaryKey(id);

    }

    /**
     * 根据PrimaryKey删除
     * <p>
     * id : uuid
     * @param id
     * 
     */
    @Override
    public boolean deleteByPrimaryKey(String id) {

        return dao.deleteByPrimaryKey(id) > 0 ? true : false;

    }

    /**
     * 根据PrimaryKey更新，会根据主键去更新其他的值(空值不覆盖有值)
     * <p>
     * id : uuid
     * @param id
     * 
     */
    @Override
    public boolean updateByPrimaryKey(TQuestionTagNoPriVo source,TQuestionTagPriVo target){

        return dao.updateByPrimaryKey(source,target) > 0 ? true : false;

    }


}
