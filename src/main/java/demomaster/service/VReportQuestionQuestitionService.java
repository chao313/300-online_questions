package demomaster.service;


import java.util.List;

import demomaster.vo.VReportQuestionQuestitionVo;
import demomaster.vo.plugin.VReportQuestionQuestitionPriVo;
import demomaster.vo.plugin.VReportQuestionQuestitionNoPriVo;


/**
 * 表名称      :v_report_question_questition
 * 表类型      :VIEW
 * 表引擎      :
 * 表版本      :0
 * 行格式      :
 * 表创建      :
 * 字符集      :
 * 表注释      :VIEW
 */
public interface VReportQuestionQuestitionService {

    /**
     * insert
     */
    boolean insert(VReportQuestionQuestitionVo vo);


    /**
     * insert vos 批量插入
     */
    boolean insert(List<VReportQuestionQuestitionVo> vos);


    /**
     * 查询base
     */
    List<VReportQuestionQuestitionVo> queryBase(VReportQuestionQuestitionVo query);


    /**
     * update base (exclude value is null or "")
     */
    boolean updateBase(VReportQuestionQuestitionVo source, VReportQuestionQuestitionVo target);

    /**
     * update base (include value is null or "")
     */
    boolean updateBaseIncludeNull(VReportQuestionQuestitionVo source, VReportQuestionQuestitionVo target);

    /**
     * 删除base
     */
    boolean deleteBase(VReportQuestionQuestitionVo vo);


}
