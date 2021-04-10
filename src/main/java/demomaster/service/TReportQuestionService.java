package demomaster.service;


import java.util.List;

import demomaster.vo.TReportQuestionVo;
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
public interface TReportQuestionService {

    /**
     * insert
     */
    boolean insert(TReportQuestionVo vo);


    /**
     * insert vos 批量插入
     */
    boolean insert(List<TReportQuestionVo> vos);


    /**
     * 查询base
     */
    List<TReportQuestionVo> queryBase(TReportQuestionVo query);


    /**
     * update base (exclude value is null or "")
     */
    boolean updateBase(TReportQuestionVo source, TReportQuestionVo target);

    /**
     * update base (include value is null or "")
     */
    boolean updateBaseIncludeNull(TReportQuestionVo source, TReportQuestionVo target);

    /**
     * 删除base
     */
    boolean deleteBase(TReportQuestionVo vo);


    /**
     * 根据PrimaryKey查询
     * <p>
     * id : 
     */
     TReportQuestionVo queryByPrimaryKey(String id);

    /**
     * 根据PrimaryKey删除
     * <p>
     * id : 
     * @param id
     * 
     */
    boolean deleteByPrimaryKey(String id);

    /**
     * 根据PrimaryKey更新，会根据主键去更新其他的值(空值不覆盖有值) -> 主键不更新
     * <p>
     * id : 
     * @param id
     * 
     */
    boolean updateByPrimaryKey(TReportQuestionNoPriVo source,TReportQuestionPriVo target);



}
