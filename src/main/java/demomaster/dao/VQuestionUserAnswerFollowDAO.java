package demomaster.dao;


import java.util.List;

import demomaster.vo.VQuestionUserAnswerFollowVo;
import demomaster.vo.plugin.VQuestionUserAnswerFollowPriVo;
import demomaster.vo.plugin.VQuestionUserAnswerFollowNoPriVo;


import org.apache.ibatis.annotations.Param;

/**
 * 表名称      :v_question_user_answer_follow
 * 表类型      :VIEW
 * 表引擎      :
 * 表版本      :0
 * 行格式      :
 * 表创建      :
 * 字符集      :
 * 表注释      :VIEW
 */
public interface VQuestionUserAnswerFollowDAO {

    /**
     * insert
     */
    int insert(VQuestionUserAnswerFollowVo vo);

    /**
     * insert vos 批量插入
     */
    int inserts(@Param(value = "vos") List<VQuestionUserAnswerFollowVo> vos);

    /**
     * 查询base
     */
    List<VQuestionUserAnswerFollowVo> queryBase(VQuestionUserAnswerFollowVo query);

    /**
     * 查询base
     */
    List<VQuestionUserAnswerFollowVo> queryByContentLike(@Param(value = "query") VQuestionUserAnswerFollowVo query, @Param(value = "words") List<String> words);

    /**
     * update base (exclude value is null or "")
     */
    int updateBase(@Param(value = "source") VQuestionUserAnswerFollowVo source, @Param(value = "target") VQuestionUserAnswerFollowVo target);


    /**
     * update base (include value is null or "")
     */
    int updateBaseIncludeNull(@Param(value = "source") VQuestionUserAnswerFollowVo source, @Param(value = "target") VQuestionUserAnswerFollowVo target);

    /**
     * 删除base
     */
    int deleteBase(VQuestionUserAnswerFollowVo vo);


}
