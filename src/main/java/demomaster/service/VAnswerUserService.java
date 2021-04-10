package demomaster.service;


import java.util.List;

import demomaster.vo.VAnswerUserVo;
import demomaster.vo.plugin.VAnswerUserPriVo;
import demomaster.vo.plugin.VAnswerUserNoPriVo;


/**
 * 表名称      :v_answer_user
 * 表类型      :VIEW
 * 表引擎      :
 * 表版本      :0
 * 行格式      :
 * 表创建      :
 * 字符集      :
 * 表注释      :VIEW
 */
public interface VAnswerUserService {

    /**
     * insert
     */
    boolean insert(VAnswerUserVo vo);


    /**
     * insert vos 批量插入
     */
    boolean insert(List<VAnswerUserVo> vos);


    /**
     * 查询base
     */
    List<VAnswerUserVo> queryBase(VAnswerUserVo query);


    /**
     * update base (exclude value is null or "")
     */
    boolean updateBase(VAnswerUserVo source, VAnswerUserVo target);

    /**
     * update base (include value is null or "")
     */
    boolean updateBaseIncludeNull(VAnswerUserVo source, VAnswerUserVo target);

    /**
     * 删除base
     */
    boolean deleteBase(VAnswerUserVo vo);


}
