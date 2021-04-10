package demomaster.dao;


import java.util.List;

import demomaster.vo.TUserVo;
import demomaster.vo.plugin.TUserPriVo;
import demomaster.vo.plugin.TUserNoPriVo;


import org.apache.ibatis.annotations.Param;

/**
 * 表名称      :t_user
 * 表类型      :BASE TABLE
 * 表引擎      :InnoDB
 * 表版本      :10
 * 行格式      :Dynamic
 * 表创建      :2020-5-17
 * 字符集      :utf8_general_ci
 * 表注释      :
 */
public interface TUserDAO {

    /**
     * insert
     */
    int insert(TUserVo vo);

    /**
     * insert vos 批量插入
     */
    int inserts(@Param(value = "vos") List<TUserVo> vos);

    /**
     * 查询base
     */
    List<TUserVo> queryBase(TUserVo query);

    /**
     * update base (exclude value is null or "")
     */
    int updateBase(@Param(value = "source") TUserVo source, @Param(value = "target") TUserVo target);


    /**
     * update base (include value is null or "")
     */
    int updateBaseIncludeNull(@Param(value = "source") TUserVo source, @Param(value = "target") TUserVo target);

    /**
     * 删除base
     */
    int deleteBase(TUserVo vo);


    /**
     * 根据PrimaryKey查询
     * <p>
     * name : 用户姓名
     * @param name
     * 
     */
    TUserVo queryByPrimaryKey(@Param(value = "name") String name);

    /**
     * 根据PrimaryKey删除
     * <p>
     * name : 用户姓名
     * @param name
     * 
     */
    int deleteByPrimaryKey(@Param(value = "name") String name);

    /**
     * 根据PrimaryKey更新，会根据主键去更新其他的值(空值不覆盖有值)
     * <p>
     * name : 用户姓名
     * @param name
     * 
     */
    int updateByPrimaryKey(@Param(value = "source") TUserNoPriVo source,@Param(value = "target") TUserPriVo target);

}
