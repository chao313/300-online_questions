package demomaster.dao;


import java.util.List;

import demomaster.vo.TReportQuestionVo;
import demomaster.vo.plugin.TReportQuestionPriVo;
import demomaster.vo.plugin.TReportQuestionNoPriVo;


import org.apache.ibatis.annotations.Param;

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
public interface TReportQuestionDAO {

    /**
     * insert
     */
    int insert(TReportQuestionVo vo);

    /**
     * insert vos 批量插入
     */
    int inserts(@Param(value = "vos") List<TReportQuestionVo> vos);

    /**
     * 查询base
     */
    List<TReportQuestionVo> queryBase(TReportQuestionVo query);

    /**
     * update base (exclude value is null or "")
     */
    int updateBase(@Param(value = "source") TReportQuestionVo source, @Param(value = "target") TReportQuestionVo target);


    /**
     * update base (include value is null or "")
     */
    int updateBaseIncludeNull(@Param(value = "source") TReportQuestionVo source, @Param(value = "target") TReportQuestionVo target);

    /**
     * 删除base
     */
    int deleteBase(TReportQuestionVo vo);


    /**
     * 根据PrimaryKey查询
     * <p>
     * id : 
     * @param id
     * 
     */
    TReportQuestionVo queryByPrimaryKey(@Param(value = "id") String id);

    /**
     * 根据PrimaryKey删除
     * <p>
     * id : 
     * @param id
     * 
     */
    int deleteByPrimaryKey(@Param(value = "id") String id);

    /**
     * 根据PrimaryKey更新，会根据主键去更新其他的值(空值不覆盖有值)
     * <p>
     * id : 
     * @param id
     * 
     */
    int updateByPrimaryKey(@Param(value = "source") TReportQuestionNoPriVo source,@Param(value = "target") TReportQuestionPriVo target);

}
