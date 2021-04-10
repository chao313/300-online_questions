package demomaster.serviceImpl;


import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;
import demomaster.vo.TReportQuestionVo;
import demomaster.dao.TReportQuestionDAO;
import demomaster.service.TReportQuestionService;
import demomaster.vo.plugin.TReportQuestionPriVo;
import demomaster.vo.plugin.TReportQuestionNoPriVo;



/**
 * 表名称      :t_report_question
 * 表类型      :BASE TABLE
 * 表引擎      :InnoDB
 * 表版本      :10
 * 行格式      :Dynamic
 * 表创建      :2020-5-17
 * 字符集      :utf8_bin
 * 表注释      :问题举报
 */
@Service
public class TReportQuestionServiceImpl implements TReportQuestionService {

    @Autowired
    private TReportQuestionDAO dao;

    /**
     * insert
     */
    @Override
    public boolean insert(TReportQuestionVo vo) {

        return dao.insert(vo) > 0 ? true : false;

    }

    /**
     * insert vos 批量插入
     */
    @Override
    public boolean insert(List<TReportQuestionVo> vos) {

        return dao.inserts(vos) > 0 ? true : false;

    }

    /**
     * 查询base
     */
    @Override
    public List<TReportQuestionVo> queryBase(TReportQuestionVo query) {

        return dao.queryBase(query);

    }

    /**
     * update base (exclude value is null or "")
     */
    @Override
    public boolean updateBase(TReportQuestionVo source, TReportQuestionVo target) {

        return dao.updateBase(source, target) > 0 ? true : false;

    }

    /**
     * update base (include value is null or "")
     */
    @Override
    public boolean updateBaseIncludeNull(TReportQuestionVo source, TReportQuestionVo target) {

        return dao.updateBaseIncludeNull(source, target) > 0 ? true : false;

    }

    /**
     * 删除base
     */
    @Override
    public boolean deleteBase(TReportQuestionVo vo) {

        return dao.deleteBase(vo) > 0 ? true : false;

    }


    /**
     * 根据PrimaryKey查询
     * <p>
     * id  
     */
    @Override
    public TReportQuestionVo queryByPrimaryKey(String id) {

        return dao.queryByPrimaryKey(id);

    }

    /**
     * 根据PrimaryKey删除
     * <p>
     * id : 
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
     * id : 
     * @param id
     * 
     */
    @Override
    public boolean updateByPrimaryKey(TReportQuestionNoPriVo source,TReportQuestionPriVo target){

        return dao.updateByPrimaryKey(source,target) > 0 ? true : false;

    }


}
