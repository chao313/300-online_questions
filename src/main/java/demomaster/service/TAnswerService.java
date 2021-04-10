package demomaster.service;


import java.util.List;

import demomaster.vo.TAnswerVo;
import demomaster.vo.plugin.TAnswerPriVo;
import demomaster.vo.plugin.TAnswerNoPriVo;


/**
 * 表名称      :t_answer
 * 表类型      :BASE TABLE
 * 表引擎      :InnoDB
 * 表版本      :10
 * 行格式      :Dynamic
 * 表创建      :2020-5-16
 * 字符集      :utf8_bin
 * 表注释      :回答时间
 */
public interface TAnswerService {

    /**
     * insert
     */
    boolean insert(TAnswerVo vo);


    /**
     * insert vos 批量插入
     */
    boolean insert(List<TAnswerVo> vos);


    /**
     * 查询base
     */
    List<TAnswerVo> queryBase(TAnswerVo query);


    /**
     * update base (exclude value is null or "")
     */
    boolean updateBase(TAnswerVo source, TAnswerVo target);

    /**
     * update base (include value is null or "")
     */
    boolean updateBaseIncludeNull(TAnswerVo source, TAnswerVo target);

    /**
     * 删除base
     */
    boolean deleteBase(TAnswerVo vo);


    /**
     * 根据PrimaryKey查询
     * <p>
     * id : 回答的uuid
     */
     TAnswerVo queryByPrimaryKey(String id);

    /**
     * 根据PrimaryKey删除
     * <p>
     * id : 回答的uuid
     * @param id
     * 
     */
    boolean deleteByPrimaryKey(String id);

    /**
     * 根据PrimaryKey更新，会根据主键去更新其他的值(空值不覆盖有值) -> 主键不更新
     * <p>
     * id : 回答的uuid
     * @param id
     * 
     */
    boolean updateByPrimaryKey(TAnswerNoPriVo source,TAnswerPriVo target);



}
