package demomaster.service;


import java.util.List;

import demomaster.vo.TFollowQuestionVo;
import demomaster.vo.plugin.TFollowQuestionPriVo;
import demomaster.vo.plugin.TFollowQuestionNoPriVo;


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
public interface TFollowQuestionService {

    /**
     * insert
     */
    boolean insert(TFollowQuestionVo vo);


    /**
     * insert vos 批量插入
     */
    boolean insert(List<TFollowQuestionVo> vos);


    /**
     * 查询base
     */
    List<TFollowQuestionVo> queryBase(TFollowQuestionVo query);


    /**
     * update base (exclude value is null or "")
     */
    boolean updateBase(TFollowQuestionVo source, TFollowQuestionVo target);

    /**
     * update base (include value is null or "")
     */
    boolean updateBaseIncludeNull(TFollowQuestionVo source, TFollowQuestionVo target);

    /**
     * 删除base
     */
    boolean deleteBase(TFollowQuestionVo vo);


    /**
     * 根据PrimaryKey查询
     * <p>
     * questionId : 问题的id<p>
     * userName : 关注的人
     */
     TFollowQuestionVo queryByPrimaryKey(String questionId,String userName);

    /**
     * 根据PrimaryKey删除
     * <p>
     * questionId : 问题的id<p>
     * userName : 关注的人
     * @param questionId
     * @param userName
     * 
     */
    boolean deleteByPrimaryKey(String questionId,String userName);

    /**
     * 根据PrimaryKey更新，会根据主键去更新其他的值(空值不覆盖有值) -> 主键不更新
     * <p>
     * questionId : 问题的id<p>
     * userName : 关注的人
     * @param questionId
     * @param userName
     * 
     */
    boolean updateByPrimaryKey(TFollowQuestionNoPriVo source,TFollowQuestionPriVo target);



}
