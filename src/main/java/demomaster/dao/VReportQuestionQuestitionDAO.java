package demomaster.dao;


import java.util.List;

import demomaster.vo.VReportQuestionQuestitionVo;
import demomaster.vo.plugin.VReportQuestionQuestitionPriVo;
import demomaster.vo.plugin.VReportQuestionQuestitionNoPriVo;


import org.apache.ibatis.annotations.Param;

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
public interface VReportQuestionQuestitionDAO {

    /**
     * insert
     */
    int insert(VReportQuestionQuestitionVo vo);

    /**
     * insert vos 批量插入
     */
    int inserts(@Param(value = "vos") List<VReportQuestionQuestitionVo> vos);

    /**
     * 查询base
     */
    List<VReportQuestionQuestitionVo> queryBase(VReportQuestionQuestitionVo query);

    /**
     * update base (exclude value is null or "")
     */
    int updateBase(@Param(value = "source") VReportQuestionQuestitionVo source, @Param(value = "target") VReportQuestionQuestitionVo target);


    /**
     * update base (include value is null or "")
     */
    int updateBaseIncludeNull(@Param(value = "source") VReportQuestionQuestitionVo source, @Param(value = "target") VReportQuestionQuestitionVo target);

    /**
     * 删除base
     */
    int deleteBase(VReportQuestionQuestitionVo vo);

}
