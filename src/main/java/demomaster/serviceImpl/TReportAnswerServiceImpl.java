package demomaster.serviceImpl;


import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;
import demomaster.vo.TReportAnswerVo;
import demomaster.dao.TReportAnswerDAO;
import demomaster.service.TReportAnswerService;
import demomaster.vo.plugin.TReportAnswerPriVo;
import demomaster.vo.plugin.TReportAnswerNoPriVo;



/**
 * 表名称      :t_report_answer
 * 表类型      :BASE TABLE
 * 表引擎      :InnoDB
 * 表版本      :10
 * 行格式      :Dynamic
 * 表创建      :2020-5-17
 * 字符集      :utf8_bin
 * 表注释      :回复举报
 */
@Service
public class TReportAnswerServiceImpl implements TReportAnswerService {

    @Autowired
    private TReportAnswerDAO dao;

    /**
     * insert
     */
    @Override
    public boolean insert(TReportAnswerVo vo) {

        return dao.insert(vo) > 0 ? true : false;

    }

    /**
     * insert vos 批量插入
     */
    @Override
    public boolean insert(List<TReportAnswerVo> vos) {

        return dao.inserts(vos) > 0 ? true : false;

    }

    /**
     * 查询base
     */
    @Override
    public List<TReportAnswerVo> queryBase(TReportAnswerVo query) {

        return dao.queryBase(query);

    }

    /**
     * update base (exclude value is null or "")
     */
    @Override
    public boolean updateBase(TReportAnswerVo source, TReportAnswerVo target) {

        return dao.updateBase(source, target) > 0 ? true : false;

    }

    /**
     * update base (include value is null or "")
     */
    @Override
    public boolean updateBaseIncludeNull(TReportAnswerVo source, TReportAnswerVo target) {

        return dao.updateBaseIncludeNull(source, target) > 0 ? true : false;

    }

    /**
     * 删除base
     */
    @Override
    public boolean deleteBase(TReportAnswerVo vo) {

        return dao.deleteBase(vo) > 0 ? true : false;

    }


    /**
     * 根据PrimaryKey查询
     * <p>
     * id  
     */
    @Override
    public TReportAnswerVo queryByPrimaryKey(String id) {

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
    public boolean updateByPrimaryKey(TReportAnswerNoPriVo source,TReportAnswerPriVo target){

        return dao.updateByPrimaryKey(source,target) > 0 ? true : false;

    }


}
