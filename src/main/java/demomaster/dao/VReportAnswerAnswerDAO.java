package demomaster.dao;


import java.util.List;

import demomaster.vo.VReportAnswerAnswerVo;
import demomaster.vo.plugin.VReportAnswerAnswerPriVo;
import demomaster.vo.plugin.VReportAnswerAnswerNoPriVo;


import org.apache.ibatis.annotations.Param;

/**
 * 表名称      :v_report_answer_answer
 * 表类型      :VIEW
 * 表引擎      :
 * 表版本      :0
 * 行格式      :
 * 表创建      :
 * 字符集      :
 * 表注释      :VIEW
 */
public interface VReportAnswerAnswerDAO {

    /**
     * insert
     */
    int insert(VReportAnswerAnswerVo vo);

    /**
     * insert vos 批量插入
     */
    int inserts(@Param(value = "vos") List<VReportAnswerAnswerVo> vos);

    /**
     * 查询base
     */
    List<VReportAnswerAnswerVo> queryBase(VReportAnswerAnswerVo query);

    /**
     * update base (exclude value is null or "")
     */
    int updateBase(@Param(value = "source") VReportAnswerAnswerVo source, @Param(value = "target") VReportAnswerAnswerVo target);


    /**
     * update base (include value is null or "")
     */
    int updateBaseIncludeNull(@Param(value = "source") VReportAnswerAnswerVo source, @Param(value = "target") VReportAnswerAnswerVo target);

    /**
     * 删除base
     */
    int deleteBase(VReportAnswerAnswerVo vo);

}
