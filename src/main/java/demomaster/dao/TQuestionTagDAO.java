package demomaster.dao;


import java.util.List;

import demomaster.vo.TQuestionTagVo;
import demomaster.vo.plugin.TQuestionTagPriVo;
import demomaster.vo.plugin.TQuestionTagNoPriVo;


import org.apache.ibatis.annotations.Param;

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
public interface TQuestionTagDAO {

    /**
     * insert
     */
    int insert(TQuestionTagVo vo);

    /**
     * insert vos 批量插入
     */
    int inserts(@Param(value = "vos") List<TQuestionTagVo> vos);

    /**
     * 查询base
     */
    List<TQuestionTagVo> queryBase(TQuestionTagVo query);

    /**
     * update base (exclude value is null or "")
     */
    int updateBase(@Param(value = "source") TQuestionTagVo source, @Param(value = "target") TQuestionTagVo target);


    /**
     * update base (include value is null or "")
     */
    int updateBaseIncludeNull(@Param(value = "source") TQuestionTagVo source, @Param(value = "target") TQuestionTagVo target);

    /**
     * 删除base
     */
    int deleteBase(TQuestionTagVo vo);


    /**
     * 根据PrimaryKey查询
     * <p>
     * id : uuid
     * @param id
     * 
     */
    TQuestionTagVo queryByPrimaryKey(@Param(value = "id") String id);

    /**
     * 根据PrimaryKey删除
     * <p>
     * id : uuid
     * @param id
     * 
     */
    int deleteByPrimaryKey(@Param(value = "id") String id);

    /**
     * 根据PrimaryKey更新，会根据主键去更新其他的值(空值不覆盖有值)
     * <p>
     * id : uuid
     * @param id
     * 
     */
    int updateByPrimaryKey(@Param(value = "source") TQuestionTagNoPriVo source,@Param(value = "target") TQuestionTagPriVo target);

}
