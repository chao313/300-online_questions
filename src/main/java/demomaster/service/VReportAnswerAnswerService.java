package demomaster.service;


import java.util.List;

import demomaster.vo.VReportAnswerAnswerVo;
import demomaster.vo.plugin.VReportAnswerAnswerPriVo;
import demomaster.vo.plugin.VReportAnswerAnswerNoPriVo;


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
public interface VReportAnswerAnswerService {

    /**
     * insert
     */
    boolean insert(VReportAnswerAnswerVo vo);


    /**
     * insert vos 批量插入
     */
    boolean insert(List<VReportAnswerAnswerVo> vos);


    /**
     * 查询base
     */
    List<VReportAnswerAnswerVo> queryBase(VReportAnswerAnswerVo query);


    /**
     * update base (exclude value is null or "")
     */
    boolean updateBase(VReportAnswerAnswerVo source, VReportAnswerAnswerVo target);

    /**
     * update base (include value is null or "")
     */
    boolean updateBaseIncludeNull(VReportAnswerAnswerVo source, VReportAnswerAnswerVo target);

    /**
     * 删除base
     */
    boolean deleteBase(VReportAnswerAnswerVo vo);


}
