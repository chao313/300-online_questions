package demomaster.dao;


import java.util.List;

import demomaster.vo.VQuestionUserVo;
import demomaster.vo.plugin.VQuestionUserPriVo;
import demomaster.vo.plugin.VQuestionUserNoPriVo;


import org.apache.ibatis.annotations.Param;

/**
 * 表名称      :v_question_user
 * 表类型      :VIEW
 * 表引擎      :
 * 表版本      :0
 * 行格式      :
 * 表创建      :
 * 字符集      :
 * 表注释      :VIEW
 */
public interface VQuestionUserDAO {

    /**
     * insert
     */
    int insert(VQuestionUserVo vo);

    /**
     * insert vos 批量插入
     */
    int inserts(@Param(value = "vos") List<VQuestionUserVo> vos);

    /**
     * 查询base
     */
    List<VQuestionUserVo> queryBase(VQuestionUserVo query);

    /**
     * update base (exclude value is null or "")
     */
    int updateBase(@Param(value = "source") VQuestionUserVo source, @Param(value = "target") VQuestionUserVo target);


    /**
     * update base (include value is null or "")
     */
    int updateBaseIncludeNull(@Param(value = "source") VQuestionUserVo source, @Param(value = "target") VQuestionUserVo target);

    /**
     * 删除base
     */
    int deleteBase(VQuestionUserVo vo);

}
