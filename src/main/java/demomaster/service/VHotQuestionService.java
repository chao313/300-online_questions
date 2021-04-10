package demomaster.service;


import java.util.List;

import demomaster.vo.VHotQuestionVo;
import demomaster.vo.plugin.VHotQuestionPriVo;
import demomaster.vo.plugin.VHotQuestionNoPriVo;


/**
 * 表名称      :v_hot_question
 * 表类型      :VIEW
 * 表引擎      :
 * 表版本      :0
 * 行格式      :
 * 表创建      :
 * 字符集      :
 * 表注释      :VIEW
 */
public interface VHotQuestionService {

    /**
     * insert
     */
    boolean insert(VHotQuestionVo vo);


    /**
     * insert vos 批量插入
     */
    boolean insert(List<VHotQuestionVo> vos);


    /**
     * 查询base
     */
    List<VHotQuestionVo> queryBase(VHotQuestionVo query);


    /**
     * update base (exclude value is null or "")
     */
    boolean updateBase(VHotQuestionVo source, VHotQuestionVo target);

    /**
     * update base (include value is null or "")
     */
    boolean updateBaseIncludeNull(VHotQuestionVo source, VHotQuestionVo target);

    /**
     * 删除base
     */
    boolean deleteBase(VHotQuestionVo vo);


}
