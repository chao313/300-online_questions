package demomaster.dao;


import java.util.List;

import demomaster.vo.VReportUserUserVo;
import demomaster.vo.plugin.VReportUserUserPriVo;
import demomaster.vo.plugin.VReportUserUserNoPriVo;


import org.apache.ibatis.annotations.Param;

/**
 * 表名称      :v_report_user_user
 * 表类型      :VIEW
 * 表引擎      :
 * 表版本      :0
 * 行格式      :
 * 表创建      :
 * 字符集      :
 * 表注释      :VIEW
 */
public interface VReportUserUserDAO {

    /**
     * insert
     */
    int insert(VReportUserUserVo vo);

    /**
     * insert vos 批量插入
     */
    int inserts(@Param(value = "vos") List<VReportUserUserVo> vos);

    /**
     * 查询base
     */
    List<VReportUserUserVo> queryBase(VReportUserUserVo query);

    /**
     * update base (exclude value is null or "")
     */
    int updateBase(@Param(value = "source") VReportUserUserVo source, @Param(value = "target") VReportUserUserVo target);


    /**
     * update base (include value is null or "")
     */
    int updateBaseIncludeNull(@Param(value = "source") VReportUserUserVo source, @Param(value = "target") VReportUserUserVo target);

    /**
     * 删除base
     */
    int deleteBase(VReportUserUserVo vo);

}
