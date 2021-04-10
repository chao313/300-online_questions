package demomaster.service;


import java.util.List;

import demomaster.vo.TQuestionTagVo;
import demomaster.vo.plugin.TQuestionTagPriVo;
import demomaster.vo.plugin.TQuestionTagNoPriVo;


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
public interface TQuestionTagService {

    /**
     * insert
     */
    boolean insert(TQuestionTagVo vo);


    /**
     * insert vos 批量插入
     */
    boolean insert(List<TQuestionTagVo> vos);


    /**
     * 查询base
     */
    List<TQuestionTagVo> queryBase(TQuestionTagVo query);


    /**
     * update base (exclude value is null or "")
     */
    boolean updateBase(TQuestionTagVo source, TQuestionTagVo target);

    /**
     * update base (include value is null or "")
     */
    boolean updateBaseIncludeNull(TQuestionTagVo source, TQuestionTagVo target);

    /**
     * 删除base
     */
    boolean deleteBase(TQuestionTagVo vo);


    /**
     * 根据PrimaryKey查询
     * <p>
     * id : uuid
     */
     TQuestionTagVo queryByPrimaryKey(String id);

    /**
     * 根据PrimaryKey删除
     * <p>
     * id : uuid
     * @param id
     * 
     */
    boolean deleteByPrimaryKey(String id);

    /**
     * 根据PrimaryKey更新，会根据主键去更新其他的值(空值不覆盖有值) -> 主键不更新
     * <p>
     * id : uuid
     * @param id
     * 
     */
    boolean updateByPrimaryKey(TQuestionTagNoPriVo source,TQuestionTagPriVo target);



}
