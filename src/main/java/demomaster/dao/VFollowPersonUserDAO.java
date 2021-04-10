package demomaster.dao;


import java.util.List;

import demomaster.vo.VFollowPersonUserVo;
import demomaster.vo.plugin.VFollowPersonUserPriVo;
import demomaster.vo.plugin.VFollowPersonUserNoPriVo;


import org.apache.ibatis.annotations.Param;

/**
 * 表名称      :v_follow_person_user
 * 表类型      :VIEW
 * 表引擎      :
 * 表版本      :0
 * 行格式      :
 * 表创建      :
 * 字符集      :
 * 表注释      :VIEW
 */
public interface VFollowPersonUserDAO {

    /**
     * insert
     */
    int insert(VFollowPersonUserVo vo);

    /**
     * insert vos 批量插入
     */
    int inserts(@Param(value = "vos") List<VFollowPersonUserVo> vos);

    /**
     * 查询base
     */
    List<VFollowPersonUserVo> queryBase(VFollowPersonUserVo query);

    /**
     * update base (exclude value is null or "")
     */
    int updateBase(@Param(value = "source") VFollowPersonUserVo source, @Param(value = "target") VFollowPersonUserVo target);


    /**
     * update base (include value is null or "")
     */
    int updateBaseIncludeNull(@Param(value = "source") VFollowPersonUserVo source, @Param(value = "target") VFollowPersonUserVo target);

    /**
     * 删除base
     */
    int deleteBase(VFollowPersonUserVo vo);

}
