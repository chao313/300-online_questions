package demomaster.dao;


import java.util.List;

import demomaster.vo.VHotQuestionVo;
import demomaster.vo.plugin.VHotQuestionPriVo;
import demomaster.vo.plugin.VHotQuestionNoPriVo;


import org.apache.ibatis.annotations.Param;

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
public interface VHotQuestionDAO {

    /**
     * insert
     */
    int insert(VHotQuestionVo vo);

    /**
     * insert vos 批量插入
     */
    int inserts(@Param(value = "vos") List<VHotQuestionVo> vos);

    /**
     * 查询base
     */
    List<VHotQuestionVo> queryBase(VHotQuestionVo query);

    /**
     * update base (exclude value is null or "")
     */
    int updateBase(@Param(value = "source") VHotQuestionVo source, @Param(value = "target") VHotQuestionVo target);


    /**
     * update base (include value is null or "")
     */
    int updateBaseIncludeNull(@Param(value = "source") VHotQuestionVo source, @Param(value = "target") VHotQuestionVo target);

    /**
     * 删除base
     */
    int deleteBase(VHotQuestionVo vo);

}
