package demomaster.service;


import java.util.List;

import demomaster.vo.VQuestionUserAnswerFollowVo;
import demomaster.vo.plugin.VQuestionUserAnswerFollowPriVo;
import demomaster.vo.plugin.VQuestionUserAnswerFollowNoPriVo;


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
public interface VQuestionUserAnswerFollowService {

    /**
     * insert
     */
    boolean insert(VQuestionUserAnswerFollowVo vo);


    /**
     * insert vos 批量插入
     */
    boolean insert(List<VQuestionUserAnswerFollowVo> vos);


    /**
     * 查询base
     */
    List<VQuestionUserAnswerFollowVo> queryBase(VQuestionUserAnswerFollowVo query);

    /**
     * 查询base
     */
    List<VQuestionUserAnswerFollowVo> queryByContentLike(VQuestionUserAnswerFollowVo query,List<String> words);


    /**
     * update base (exclude value is null or "")
     */
    boolean updateBase(VQuestionUserAnswerFollowVo source, VQuestionUserAnswerFollowVo target);

    /**
     * update base (include value is null or "")
     */
    boolean updateBaseIncludeNull(VQuestionUserAnswerFollowVo source, VQuestionUserAnswerFollowVo target);

    /**
     * 删除base
     */
    boolean deleteBase(VQuestionUserAnswerFollowVo vo);


}
