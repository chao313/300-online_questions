package demomaster.service;


import java.util.List;

import demomaster.vo.VQuestionAnswerSumVo;
import demomaster.vo.plugin.VQuestionAnswerSumPriVo;
import demomaster.vo.plugin.VQuestionAnswerSumNoPriVo;


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
public interface VQuestionAnswerSumService {

    /**
     * insert
     */
    boolean insert(VQuestionAnswerSumVo vo);


    /**
     * insert vos 批量插入
     */
    boolean insert(List<VQuestionAnswerSumVo> vos);


    /**
     * 查询base
     */
    List<VQuestionAnswerSumVo> queryBase(VQuestionAnswerSumVo query);


    /**
     * update base (exclude value is null or "")
     */
    boolean updateBase(VQuestionAnswerSumVo source, VQuestionAnswerSumVo target);

    /**
     * update base (include value is null or "")
     */
    boolean updateBaseIncludeNull(VQuestionAnswerSumVo source, VQuestionAnswerSumVo target);

    /**
     * 删除base
     */
    boolean deleteBase(VQuestionAnswerSumVo vo);


}
