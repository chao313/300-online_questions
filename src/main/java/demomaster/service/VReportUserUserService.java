package demomaster.service;


import java.util.List;

import demomaster.vo.VReportUserUserVo;
import demomaster.vo.plugin.VReportUserUserPriVo;
import demomaster.vo.plugin.VReportUserUserNoPriVo;


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
public interface VReportUserUserService {

    /**
     * insert
     */
    boolean insert(VReportUserUserVo vo);


    /**
     * insert vos 批量插入
     */
    boolean insert(List<VReportUserUserVo> vos);


    /**
     * 查询base
     */
    List<VReportUserUserVo> queryBase(VReportUserUserVo query);


    /**
     * update base (exclude value is null or "")
     */
    boolean updateBase(VReportUserUserVo source, VReportUserUserVo target);

    /**
     * update base (include value is null or "")
     */
    boolean updateBaseIncludeNull(VReportUserUserVo source, VReportUserUserVo target);

    /**
     * 删除base
     */
    boolean deleteBase(VReportUserUserVo vo);


}
