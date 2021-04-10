package demomaster.service;


import java.util.List;

import demomaster.vo.VAnswerSecondUserVo;
import demomaster.vo.plugin.VAnswerSecondUserPriVo;
import demomaster.vo.plugin.VAnswerSecondUserNoPriVo;


/**
 * 表名称      :v_answer_second_user
 * 表类型      :VIEW
 * 表引擎      :
 * 表版本      :0
 * 行格式      :
 * 表创建      :
 * 字符集      :
 * 表注释      :VIEW
 */
public interface VAnswerSecondUserService {

    /**
     * insert
     */
    boolean insert(VAnswerSecondUserVo vo);


    /**
     * insert vos 批量插入
     */
    boolean insert(List<VAnswerSecondUserVo> vos);


    /**
     * 查询base
     */
    List<VAnswerSecondUserVo> queryBase(VAnswerSecondUserVo query);


    /**
     * update base (exclude value is null or "")
     */
    boolean updateBase(VAnswerSecondUserVo source, VAnswerSecondUserVo target);

    /**
     * update base (include value is null or "")
     */
    boolean updateBaseIncludeNull(VAnswerSecondUserVo source, VAnswerSecondUserVo target);

    /**
     * 删除base
     */
    boolean deleteBase(VAnswerSecondUserVo vo);


}
