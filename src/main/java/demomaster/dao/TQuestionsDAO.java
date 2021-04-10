package demomaster.dao;


import java.util.List;

import demomaster.vo.TQuestionsVo;
import demomaster.vo.plugin.TQuestionsPriVo;
import demomaster.vo.plugin.TQuestionsNoPriVo;


import org.apache.ibatis.annotations.Param;

/**
 * 表名称      :t_questions
 * 表类型      :BASE TABLE
 * 表引擎      :InnoDB
 * 表版本      :10
 * 行格式      :Dynamic
 * 表创建      :2020-5-17
 * 字符集      :utf8_bin
 * 表注释      :
 */
public interface TQuestionsDAO {

    /**
     * insert
     */
    int insert(TQuestionsVo vo);

    /**
     * insert vos 批量插入
     */
    int inserts(@Param(value = "vos") List<TQuestionsVo> vos);

    /**
     * 查询base
     */
    List<TQuestionsVo> queryBase(TQuestionsVo query);

    /**
     * update base (exclude value is null or "")
     */
    int updateBase(@Param(value = "source") TQuestionsVo source, @Param(value = "target") TQuestionsVo target);


    /**
     * update base (include value is null or "")
     */
    int updateBaseIncludeNull(@Param(value = "source") TQuestionsVo source, @Param(value = "target") TQuestionsVo target);

    /**
     * 删除base
     */
    int deleteBase(TQuestionsVo vo);


    /**
     * 根据PrimaryKey查询
     * <p>
     * id : 问题的id
     * @param id
     * 
     */
    TQuestionsVo queryByPrimaryKey(@Param(value = "id") String id);

    /**
     * 根据PrimaryKey删除
     * <p>
     * id : 问题的id
     * @param id
     * 
     */
    int deleteByPrimaryKey(@Param(value = "id") String id);

    /**
     * 根据PrimaryKey更新，会根据主键去更新其他的值(空值不覆盖有值)
     * <p>
     * id : 问题的id
     * @param id
     * 
     */
    int updateByPrimaryKey(@Param(value = "source") TQuestionsNoPriVo source,@Param(value = "target") TQuestionsPriVo target);

}
