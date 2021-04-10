package demomaster.service;


import java.util.List;

import demomaster.vo.TReportUserVo;
import demomaster.vo.plugin.TReportUserPriVo;
import demomaster.vo.plugin.TReportUserNoPriVo;


/**
 * 表名称      :t_report_user
 * 表类型      :BASE TABLE
 * 表引擎      :InnoDB
 * 表版本      :10
 * 行格式      :Dynamic
 * 表创建      :2020-5-17
 * 字符集      :utf8_bin
 * 表注释      :用户举报
 */
public interface TReportUserService {

    /**
     * insert
     */
    boolean insert(TReportUserVo vo);


    /**
     * insert vos 批量插入
     */
    boolean insert(List<TReportUserVo> vos);


    /**
     * 查询base
     */
    List<TReportUserVo> queryBase(TReportUserVo query);


    /**
     * update base (exclude value is null or "")
     */
    boolean updateBase(TReportUserVo source, TReportUserVo target);

    /**
     * update base (include value is null or "")
     */
    boolean updateBaseIncludeNull(TReportUserVo source, TReportUserVo target);

    /**
     * 删除base
     */
    boolean deleteBase(TReportUserVo vo);


    /**
     * 根据PrimaryKey查询
     * <p>
     * id : 
     */
     TReportUserVo queryByPrimaryKey(String id);

    /**
     * 根据PrimaryKey删除
     * <p>
     * id : 
     * @param id
     * 
     */
    boolean deleteByPrimaryKey(String id);

    /**
     * 根据PrimaryKey更新，会根据主键去更新其他的值(空值不覆盖有值) -> 主键不更新
     * <p>
     * id : 
     * @param id
     * 
     */
    boolean updateByPrimaryKey(TReportUserNoPriVo source,TReportUserPriVo target);



}
