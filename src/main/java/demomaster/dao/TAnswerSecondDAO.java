package demomaster.dao;


import java.util.List;

import demomaster.vo.TAnswerSecondVo;
import demomaster.vo.plugin.TAnswerSecondPriVo;
import demomaster.vo.plugin.TAnswerSecondNoPriVo;


import org.apache.ibatis.annotations.Param;

/**
 * 表名称      :t_answer_second
 * 表类型      :BASE TABLE
 * 表引擎      :InnoDB
 * 表版本      :10
 * 行格式      :Dynamic
 * 表创建      :2020-5-17
 * 字符集      :utf8_bin
 * 表注释      :回答时间
 */
public interface TAnswerSecondDAO {

    /**
     * insert
     */
    int insert(TAnswerSecondVo vo);

    /**
     * insert vos 批量插入
     */
    int inserts(@Param(value = "vos") List<TAnswerSecondVo> vos);

    /**
     * 查询base
     */
    List<TAnswerSecondVo> queryBase(TAnswerSecondVo query);

    /**
     * update base (exclude value is null or "")
     */
    int updateBase(@Param(value = "source") TAnswerSecondVo source, @Param(value = "target") TAnswerSecondVo target);


    /**
     * update base (include value is null or "")
     */
    int updateBaseIncludeNull(@Param(value = "source") TAnswerSecondVo source, @Param(value = "target") TAnswerSecondVo target);

    /**
     * 删除base
     */
    int deleteBase(TAnswerSecondVo vo);


    /**
     * 根据PrimaryKey查询
     * <p>
     * id : 回答的uuid
     * @param id
     * 
     */
    TAnswerSecondVo queryByPrimaryKey(@Param(value = "id") String id);

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
    int updateByPrimaryKey(@Param(value = "source") TAnswerSecondNoPriVo source,@Param(value = "target") TAnswerSecondPriVo target);

}
