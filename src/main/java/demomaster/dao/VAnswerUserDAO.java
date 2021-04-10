package demomaster.dao;


import java.util.List;

import demomaster.vo.VAnswerUserVo;
import demomaster.vo.plugin.VAnswerUserPriVo;
import demomaster.vo.plugin.VAnswerUserNoPriVo;


import org.apache.ibatis.annotations.Param;

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
public interface VAnswerUserDAO {

    /**
     * insert
     */
    int insert(VAnswerUserVo vo);

    /**
     * insert vos 批量插入
     */
    int inserts(@Param(value = "vos") List<VAnswerUserVo> vos);

    /**
     * 查询base
     */
    List<VAnswerUserVo> queryBase(VAnswerUserVo query);

    /**
     * update base (exclude value is null or "")
     */
    int updateBase(@Param(value = "source") VAnswerUserVo source, @Param(value = "target") VAnswerUserVo target);


    /**
     * update base (include value is null or "")
     */
    int updateBaseIncludeNull(@Param(value = "source") VAnswerUserVo source, @Param(value = "target") VAnswerUserVo target);

    /**
     * 删除base
     */
    int deleteBase(VAnswerUserVo vo);

}
