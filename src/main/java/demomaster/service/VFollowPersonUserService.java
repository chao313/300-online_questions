package demomaster.service;


import java.util.List;

import demomaster.vo.VFollowPersonUserVo;
import demomaster.vo.plugin.VFollowPersonUserPriVo;
import demomaster.vo.plugin.VFollowPersonUserNoPriVo;


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
public interface VFollowPersonUserService {

    /**
     * insert
     */
    boolean insert(VFollowPersonUserVo vo);


    /**
     * insert vos 批量插入
     */
    boolean insert(List<VFollowPersonUserVo> vos);


    /**
     * 查询base
     */
    List<VFollowPersonUserVo> queryBase(VFollowPersonUserVo query);


    /**
     * update base (exclude value is null or "")
     */
    boolean updateBase(VFollowPersonUserVo source, VFollowPersonUserVo target);

    /**
     * update base (include value is null or "")
     */
    boolean updateBaseIncludeNull(VFollowPersonUserVo source, VFollowPersonUserVo target);

    /**
     * 删除base
     */
    boolean deleteBase(VFollowPersonUserVo vo);


}
