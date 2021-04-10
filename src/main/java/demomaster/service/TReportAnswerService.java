package demomaster.service;


import java.util.List;

import demomaster.vo.TReportAnswerVo;
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
public interface TReportAnswerService {

    /**
     * insert
     */
    boolean insert(TReportAnswerVo vo);


    /**
     * insert vos 批量插入
     */
    boolean insert(List<TReportAnswerVo> vos);


    /**
     * 查询base
     */
    List<TReportAnswerVo> queryBase(TReportAnswerVo query);


    /**
     * update base (exclude value is null or "")
     */
    boolean updateBase(TReportAnswerVo source, TReportAnswerVo target);

    /**
     * update base (include value is null or "")
     */
    boolean updateBaseIncludeNull(TReportAnswerVo source, TReportAnswerVo target);

    /**
     * 删除base
     */
    boolean deleteBase(TReportAnswerVo vo);


    /**
     * 根据PrimaryKey查询
     * <p>
     * id : 
     */
     TReportAnswerVo queryByPrimaryKey(String id);

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
    boolean updateByPrimaryKey(TReportAnswerNoPriVo source,TReportAnswerPriVo target);



}
