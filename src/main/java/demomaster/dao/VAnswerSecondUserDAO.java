package demomaster.dao;


import java.util.List;

import demomaster.vo.VAnswerSecondUserVo;
import demomaster.vo.plugin.VAnswerSecondUserPriVo;
import demomaster.vo.plugin.VAnswerSecondUserNoPriVo;


import org.apache.ibatis.annotations.Param;

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
public interface VAnswerSecondUserDAO {

    /**
     * insert
     */
    int insert(VAnswerSecondUserVo vo);

    /**
     * insert vos 批量插入
     */
    int inserts(@Param(value = "vos") List<VAnswerSecondUserVo> vos);

    /**
     * 查询base
     */
    List<VAnswerSecondUserVo> queryBase(VAnswerSecondUserVo query);

    /**
     * update base (exclude value is null or "")
     */
    int updateBase(@Param(value = "source") VAnswerSecondUserVo source, @Param(value = "target") VAnswerSecondUserVo target);


    /**
     * update base (include value is null or "")
     */
    int updateBaseIncludeNull(@Param(value = "source") VAnswerSecondUserVo source, @Param(value = "target") VAnswerSecondUserVo target);

    /**
     * 删除base
     */
    int deleteBase(VAnswerSecondUserVo vo);

}
