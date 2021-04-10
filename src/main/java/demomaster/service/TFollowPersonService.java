package demomaster.service;


import java.util.List;

import demomaster.vo.TFollowPersonVo;
import demomaster.vo.plugin.TFollowPersonPriVo;
import demomaster.vo.plugin.TFollowPersonNoPriVo;


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
public interface TFollowPersonService {

    /**
     * insert
     */
    boolean insert(TFollowPersonVo vo);


    /**
     * insert vos 批量插入
     */
    boolean insert(List<TFollowPersonVo> vos);


    /**
     * 查询base
     */
    List<TFollowPersonVo> queryBase(TFollowPersonVo query);


    /**
     * update base (exclude value is null or "")
     */
    boolean updateBase(TFollowPersonVo source, TFollowPersonVo target);

    /**
     * update base (include value is null or "")
     */
    boolean updateBaseIncludeNull(TFollowPersonVo source, TFollowPersonVo target);

    /**
     * 删除base
     */
    boolean deleteBase(TFollowPersonVo vo);


    /**
     * 根据PrimaryKey查询
     * <p>
     * userNameFollow : 被关注的人<p>
     * userName : 关注的人
     */
     TFollowPersonVo queryByPrimaryKey(String userNameFollow,String userName);

    /**
     * 根据PrimaryKey删除
     * <p>
     * userNameFollow : 被关注的人<p>
     * userName : 关注的人
     * @param userNameFollow
     * @param userName
     * 
     */
    boolean deleteByPrimaryKey(String userNameFollow,String userName);

    /**
     * 根据PrimaryKey更新，会根据主键去更新其他的值(空值不覆盖有值) -> 主键不更新
     * <p>
     * userNameFollow : 被关注的人<p>
     * userName : 关注的人
     * @param userNameFollow
     * @param userName
     * 
     */
    boolean updateByPrimaryKey(TFollowPersonNoPriVo source,TFollowPersonPriVo target);



}
