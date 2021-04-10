package demomaster.dao;


import java.util.List;

import demomaster.vo.VQuestionAnswerSumVo;
import demomaster.vo.plugin.VQuestionAnswerSumPriVo;
import demomaster.vo.plugin.VQuestionAnswerSumNoPriVo;


import org.apache.ibatis.annotations.Param;

/**
 * 表名称      :v_question_answer_sum
 * 表类型      :VIEW
 * 表引擎      :
 * 表版本      :0
 * 行格式      :
 * 表创建      :
 * 字符集      :
 * 表注释      :VIEW
 */
public interface VQuestionAnswerSumDAO {

    /**
     * insert
     */
    int insert(VQuestionAnswerSumVo vo);

    /**
     * insert vos 批量插入
     */
    int inserts(@Param(value = "vos") List<VQuestionAnswerSumVo> vos);

    /**
     * 查询base
     */
    List<VQuestionAnswerSumVo> queryBase(VQuestionAnswerSumVo query);

    /**
     * update base (exclude value is null or "")
     */
    int updateBase(@Param(value = "source") VQuestionAnswerSumVo source, @Param(value = "target") VQuestionAnswerSumVo target);


    /**
     * update base (include value is null or "")
     */
    int updateBaseIncludeNull(@Param(value = "source") VQuestionAnswerSumVo source, @Param(value = "target") VQuestionAnswerSumVo target);

    /**
     * 删除base
     */
    int deleteBase(VQuestionAnswerSumVo vo);

}
