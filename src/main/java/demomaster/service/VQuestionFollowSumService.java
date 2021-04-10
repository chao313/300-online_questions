package demomaster.service;


import java.util.List;

import demomaster.vo.VQuestionFollowSumVo;
import demomaster.vo.plugin.VQuestionFollowSumPriVo;
import demomaster.vo.plugin.VQuestionFollowSumNoPriVo;


/**
 * 表名称      :v_question_follow_sum
 * 表类型      :VIEW
 * 表引擎      :
 * 表版本      :0
 * 行格式      :
 * 表创建      :
 * 字符集      :
 * 表注释      :VIEW
 */
public interface VQuestionFollowSumService {

    /**
     * insert
     */
    boolean insert(VQuestionFollowSumVo vo);


    /**
     * insert vos 批量插入
     */
    boolean insert(List<VQuestionFollowSumVo> vos);


    /**
     * 查询base
     */
    List<VQuestionFollowSumVo> queryBase(VQuestionFollowSumVo query);


    /**
     * update base (exclude value is null or "")
     */
    boolean updateBase(VQuestionFollowSumVo source, VQuestionFollowSumVo target);

    /**
     * update base (include value is null or "")
     */
    boolean updateBaseIncludeNull(VQuestionFollowSumVo source, VQuestionFollowSumVo target);

    /**
     * 删除base
     */
    boolean deleteBase(VQuestionFollowSumVo vo);


}
