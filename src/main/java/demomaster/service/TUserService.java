package demomaster.service;


import java.util.List;

import demomaster.vo.TUserVo;
import demomaster.vo.plugin.TUserPriVo;
import demomaster.vo.plugin.TUserNoPriVo;


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
public interface TUserService {

    /**
     * insert
     */
    boolean insert(TUserVo vo);


    /**
     * insert vos 批量插入
     */
    boolean insert(List<TUserVo> vos);


    /**
     * 查询base
     */
    List<TUserVo> queryBase(TUserVo query);


    /**
     * update base (exclude value is null or "")
     */
    boolean updateBase(TUserVo source, TUserVo target);

    /**
     * update base (include value is null or "")
     */
    boolean updateBaseIncludeNull(TUserVo source, TUserVo target);

    /**
     * 删除base
     */
    boolean deleteBase(TUserVo vo);


    /**
     * 根据PrimaryKey查询
     * <p>
     * name : 用户姓名
     */
     TUserVo queryByPrimaryKey(String name);

    /**
     * 根据PrimaryKey删除
     * <p>
     * name : 用户姓名
     * @param name
     * 
     */
    boolean deleteByPrimaryKey(String name);

    /**
     * 根据PrimaryKey更新，会根据主键去更新其他的值(空值不覆盖有值) -> 主键不更新
     * <p>
     * name : 用户姓名
     * @param name
     * 
     */
    boolean updateByPrimaryKey(TUserNoPriVo source,TUserPriVo target);



}
