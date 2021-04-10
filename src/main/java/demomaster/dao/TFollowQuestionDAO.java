package demomaster.dao;


import java.util.List;

import demomaster.vo.TFollowQuestionVo;
import demomaster.vo.plugin.TFollowQuestionPriVo;
import demomaster.vo.plugin.TFollowQuestionNoPriVo;


import org.apache.ibatis.annotations.Param;

/**
 * 表名称      :t_follow_question
 * 表类型      :BASE TABLE
 * 表引擎      :InnoDB
 * 表版本      :10
 * 行格式      :Dynamic
 * 表创建      :2020-5-16
 * 字符集      :utf8_bin
 * 表注释      :问题关注
 */
public interface TFollowQuestionDAO {

    /**
     * insert
     */
    int insert(TFollowQuestionVo vo);

    /**
     * insert vos 批量插入
     */
    int inserts(@Param(value = "vos") List<TFollowQuestionVo> vos);

    /**
     * 查询base
     */
    List<TFollowQuestionVo> queryBase(TFollowQuestionVo query);

    /**
     * update base (exclude value is null or "")
     */
    int updateBase(@Param(value = "source") TFollowQuestionVo source, @Param(value = "target") TFollowQuestionVo target);


    /**
     * update base (include value is null or "")
     */
    int updateBaseIncludeNull(@Param(value = "source") TFollowQuestionVo source, @Param(value = "target") TFollowQuestionVo target);

    /**
     * 删除base
     */
    int deleteBase(TFollowQuestionVo vo);


    /**
     * 根据PrimaryKey查询
     * <p>
     * questionId : 问题的id<p>
     * userName : 关注的人
     * @param questionId
     * @param userName
     * 
     */
    TFollowQuestionVo queryByPrimaryKey(@Param(value = "questionId") String questionId,@Param(value = "userName") String userName);

    /**
     * 根据PrimaryKey删除
     * <p>
     * questionId : 问题的id<p>
     * userName : 关注的人
     * @param questionId
     * @param userName
     * 
     */
    int deleteByPrimaryKey(@Param(value = "questionId") String questionId,@Param(value = "userName") String userName);

    /**
     * 根据PrimaryKey更新，会根据主键去更新其他的值(空值不覆盖有值)
     * <p>
     * questionId : 问题的id<p>
     * userName : 关注的人
     * @param questionId
     * @param userName
     * 
     */
    int updateByPrimaryKey(@Param(value = "source") TFollowQuestionNoPriVo source,@Param(value = "target") TFollowQuestionPriVo target);

}
