package demomaster.service;


import java.util.List;

import demomaster.vo.TQuestionsVo;
import demomaster.vo.plugin.TQuestionsPriVo;
import demomaster.vo.plugin.TQuestionsNoPriVo;


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
public interface TQuestionsService {

    /**
     * insert
     */
    boolean insert(TQuestionsVo vo);


    /**
     * insert vos 批量插入
     */
    boolean insert(List<TQuestionsVo> vos);


    /**
     * 查询base
     */
    List<TQuestionsVo> queryBase(TQuestionsVo query);


    /**
     * update base (exclude value is null or "")
     */
    boolean updateBase(TQuestionsVo source, TQuestionsVo target);

    /**
     * update base (include value is null or "")
     */
    boolean updateBaseIncludeNull(TQuestionsVo source, TQuestionsVo target);

    /**
     * 删除base
     */
    boolean deleteBase(TQuestionsVo vo);


    /**
     * 根据PrimaryKey查询
     * <p>
     * id : 问题的id
     */
     TQuestionsVo queryByPrimaryKey(String id);

    /**
     * 根据PrimaryKey删除
     * <p>
     * id : 问题的id
     * @param id
     * 
     */
    boolean deleteByPrimaryKey(String id);

    /**
     * 根据PrimaryKey更新，会根据主键去更新其他的值(空值不覆盖有值) -> 主键不更新
     * <p>
     * id : 问题的id
     * @param id
     * 
     */
    boolean updateByPrimaryKey(TQuestionsNoPriVo source,TQuestionsPriVo target);



}
