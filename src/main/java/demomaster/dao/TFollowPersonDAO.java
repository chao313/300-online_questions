package demomaster.dao;


import java.util.List;

import demomaster.vo.TFollowPersonVo;
import demomaster.vo.plugin.TFollowPersonPriVo;
import demomaster.vo.plugin.TFollowPersonNoPriVo;


import org.apache.ibatis.annotations.Param;

/**
 * 表名称      :t_follow_person
 * 表类型      :BASE TABLE
 * 表引擎      :InnoDB
 * 表版本      :10
 * 行格式      :Dynamic
 * 表创建      :2020-5-16
 * 字符集      :utf8_bin
 * 表注释      :用户关注
 */
public interface TFollowPersonDAO {

    /**
     * insert
     */
    int insert(TFollowPersonVo vo);

    /**
     * insert vos 批量插入
     */
    int inserts(@Param(value = "vos") List<TFollowPersonVo> vos);

    /**
     * 查询base
     */
    List<TFollowPersonVo> queryBase(TFollowPersonVo query);

    /**
     * update base (exclude value is null or "")
     */
    int updateBase(@Param(value = "source") TFollowPersonVo source, @Param(value = "target") TFollowPersonVo target);


    /**
     * update base (include value is null or "")
     */
    int updateBaseIncludeNull(@Param(value = "source") TFollowPersonVo source, @Param(value = "target") TFollowPersonVo target);

    /**
     * 删除base
     */
    int deleteBase(TFollowPersonVo vo);


    /**
     * 根据PrimaryKey查询
     * <p>
     * userNameFollow : 被关注的人<p>
     * userName : 关注的人
     * @param userNameFollow
     * @param userName
     * 
     */
    TFollowPersonVo queryByPrimaryKey(@Param(value = "userNameFollow") String userNameFollow,@Param(value = "userName") String userName);

    /**
     * 根据PrimaryKey删除
     * <p>
     * userNameFollow : 被关注的人<p>
     * userName : 关注的人
     * @param userNameFollow
     * @param userName
     * 
     */
    int deleteByPrimaryKey(@Param(value = "userNameFollow") String userNameFollow,@Param(value = "userName") String userName);

    /**
     * 根据PrimaryKey更新，会根据主键去更新其他的值(空值不覆盖有值)
     * <p>
     * userNameFollow : 被关注的人<p>
     * userName : 关注的人
     * @param userNameFollow
     * @param userName
     * 
     */
    int updateByPrimaryKey(@Param(value = "source") TFollowPersonNoPriVo source,@Param(value = "target") TFollowPersonPriVo target);

}
