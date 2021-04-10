package demomaster.dao;


import java.util.List;

import demomaster.vo.TAnswerVo;
import demomaster.vo.plugin.TAnswerPriVo;
import demomaster.vo.plugin.TAnswerNoPriVo;


import org.apache.ibatis.annotations.Param;

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
public interface TAnswerDAO {

    /**
     * insert
     */
    int insert(TAnswerVo vo);

    /**
     * insert vos 批量插入
     */
    int inserts(@Param(value = "vos") List<TAnswerVo> vos);

    /**
     * 查询base
     */
    List<TAnswerVo> queryBase(TAnswerVo query);

    /**
     * update base (exclude value is null or "")
     */
    int updateBase(@Param(value = "source") TAnswerVo source, @Param(value = "target") TAnswerVo target);


    /**
     * update base (include value is null or "")
     */
    int updateBaseIncludeNull(@Param(value = "source") TAnswerVo source, @Param(value = "target") TAnswerVo target);

    /**
     * 删除base
     */
    int deleteBase(TAnswerVo vo);


    /**
     * 根据PrimaryKey查询
     * <p>
     * id : 回答的uuid
     * @param id
     * 
     */
    TAnswerVo queryByPrimaryKey(@Param(value = "id") String id);

    /**
     * 根据PrimaryKey删除
     * <p>
     * id : 回答的uuid
     * @param id
     * 
     */
    int deleteByPrimaryKey(@Param(value = "id") String id);

    /**
     * 根据PrimaryKey更新，会根据主键去更新其他的值(空值不覆盖有值)
     * <p>
     * id : 回答的uuid
     * @param id
     * 
     */
    int updateByPrimaryKey(@Param(value = "source") TAnswerNoPriVo source,@Param(value = "target") TAnswerPriVo target);

}
