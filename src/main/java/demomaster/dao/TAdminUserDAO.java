package demomaster.dao;


import java.util.List;

import demomaster.vo.TAdminUserVo;
import demomaster.vo.plugin.TAdminUserPriVo;
import demomaster.vo.plugin.TAdminUserNoPriVo;


import org.apache.ibatis.annotations.Param;

/**
 * 表名称      :t_admin_user
 * 表类型      :BASE TABLE
 * 表引擎      :InnoDB
 * 表版本      :10
 * 行格式      :Dynamic
 * 表创建      :2020-5-16
 * 字符集      :utf8_general_ci
 * 表注释      :
 */
public interface TAdminUserDAO {

    /**
     * insert
     */
    int insert(TAdminUserVo vo);

    /**
     * insert vos 批量插入
     */
    int inserts(@Param(value = "vos") List<TAdminUserVo> vos);

    /**
     * 查询base
     */
    List<TAdminUserVo> queryBase(TAdminUserVo query);

    /**
     * update base (exclude value is null or "")
     */
    int updateBase(@Param(value = "source") TAdminUserVo source, @Param(value = "target") TAdminUserVo target);


    /**
     * update base (include value is null or "")
     */
    int updateBaseIncludeNull(@Param(value = "source") TAdminUserVo source, @Param(value = "target") TAdminUserVo target);

    /**
     * 删除base
     */
    int deleteBase(TAdminUserVo vo);


    /**
     * 根据PrimaryKey查询
     * <p>
     * id : 用户登录ID
     * @param id
     * 
     */
    TAdminUserVo queryByPrimaryKey(@Param(value = "id") String id);

    /**
     * 根据PrimaryKey删除
     * <p>
     * id : 用户登录ID
     * @param id
     * 
     */
    int deleteByPrimaryKey(@Param(value = "id") String id);

    /**
     * 根据PrimaryKey更新，会根据主键去更新其他的值(空值不覆盖有值)
     * <p>
     * id : 用户登录ID
     * @param id
     * 
     */
    int updateByPrimaryKey(@Param(value = "source") TAdminUserNoPriVo source,@Param(value = "target") TAdminUserPriVo target);

}
