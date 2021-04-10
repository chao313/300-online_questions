package demomaster.dao;


import java.util.List;

import demomaster.vo.VQuestionFollowSumVo;
import demomaster.vo.plugin.VQuestionFollowSumPriVo;
import demomaster.vo.plugin.VQuestionFollowSumNoPriVo;


import org.apache.ibatis.annotations.Param;

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
public interface VQuestionFollowSumDAO {

    /**
     * insert
     */
    int insert(VQuestionFollowSumVo vo);

    /**
     * insert vos 批量插入
     */
    int inserts(@Param(value = "vos") List<VQuestionFollowSumVo> vos);

    /**
     * 查询base
     */
    List<VQuestionFollowSumVo> queryBase(VQuestionFollowSumVo query);

    /**
     * update base (exclude value is null or "")
     */
    int updateBase(@Param(value = "source") VQuestionFollowSumVo source, @Param(value = "target") VQuestionFollowSumVo target);


    /**
     * update base (include value is null or "")
     */
    int updateBaseIncludeNull(@Param(value = "source") VQuestionFollowSumVo source, @Param(value = "target") VQuestionFollowSumVo target);

    /**
     * 删除base
     */
    int deleteBase(VQuestionFollowSumVo vo);

}
