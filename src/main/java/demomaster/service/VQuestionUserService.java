package demomaster.service;


import java.util.List;

import demomaster.vo.VQuestionUserVo;
import demomaster.vo.plugin.VQuestionUserPriVo;
import demomaster.vo.plugin.VQuestionUserNoPriVo;


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
public interface VQuestionUserService {

    /**
     * insert
     */
    boolean insert(VQuestionUserVo vo);


    /**
     * insert vos 批量插入
     */
    boolean insert(List<VQuestionUserVo> vos);


    /**
     * 查询base
     */
    List<VQuestionUserVo> queryBase(VQuestionUserVo query);


    /**
     * update base (exclude value is null or "")
     */
    boolean updateBase(VQuestionUserVo source, VQuestionUserVo target);

    /**
     * update base (include value is null or "")
     */
    boolean updateBaseIncludeNull(VQuestionUserVo source, VQuestionUserVo target);

    /**
     * 删除base
     */
    boolean deleteBase(VQuestionUserVo vo);


}
