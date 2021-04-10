package demomaster.dao;


import java.util.List;

import demomaster.vo.TReportAnswerVo;
import demomaster.vo.plugin.TReportAnswerPriVo;
import demomaster.vo.plugin.TReportAnswerNoPriVo;


import org.apache.ibatis.annotations.Param;

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
public interface TReportAnswerDAO {

    /**
     * insert
     */
    int insert(TReportAnswerVo vo);

    /**
     * insert vos 批量插入
     */
    int inserts(@Param(value = "vos") List<TReportAnswerVo> vos);

    /**
     * 查询base
     */
    List<TReportAnswerVo> queryBase(TReportAnswerVo query);

    /**
     * update base (exclude value is null or "")
     */
    int updateBase(@Param(value = "source") TReportAnswerVo source, @Param(value = "target") TReportAnswerVo target);


    /**
     * update base (include value is null or "")
     */
    int updateBaseIncludeNull(@Param(value = "source") TReportAnswerVo source, @Param(value = "target") TReportAnswerVo target);

    /**
     * 删除base
     */
    int deleteBase(TReportAnswerVo vo);


    /**
     * 根据PrimaryKey查询
     * <p>
     * id : 
     * @param id
     * 
     */
    TReportAnswerVo queryByPrimaryKey(@Param(value = "id") String id);

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
    int updateByPrimaryKey(@Param(value = "source") TReportAnswerNoPriVo source,@Param(value = "target") TReportAnswerPriVo target);

}
