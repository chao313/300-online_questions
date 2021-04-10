package demomaster.dao;


import java.util.List;

import demomaster.vo.TTagVo;
import demomaster.vo.plugin.TTagPriVo;
import demomaster.vo.plugin.TTagNoPriVo;


import org.apache.ibatis.annotations.Param;

/**
 * 表名称      :t_tag
 * 表类型      :BASE TABLE
 * 表引擎      :InnoDB
 * 表版本      :10
 * 行格式      :Dynamic
 * 表创建      :2020-5-13
 * 字符集      :utf8_bin
 * 表注释      :
 */
public interface TTagDAO {

    /**
     * insert
     */
    int insert(TTagVo vo);

    /**
     * insert vos 批量插入
     */
    int inserts(@Param(value = "vos") List<TTagVo> vos);

    /**
     * 查询base
     */
    List<TTagVo> queryBase(TTagVo query);

    /**
     * update base (exclude value is null or "")
     */
    int updateBase(@Param(value = "source") TTagVo source, @Param(value = "target") TTagVo target);


    /**
     * update base (include value is null or "")
     */
    int updateBaseIncludeNull(@Param(value = "source") TTagVo source, @Param(value = "target") TTagVo target);

    /**
     * 删除base
     */
    int deleteBase(TTagVo vo);


    /**
     * 根据PrimaryKey查询
     * <p>
     * id : 
     * @param id
     * 
     */
    TTagVo queryByPrimaryKey(@Param(value = "id") String id);

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
    int updateByPrimaryKey(@Param(value = "source") TTagNoPriVo source,@Param(value = "target") TTagPriVo target);

}
