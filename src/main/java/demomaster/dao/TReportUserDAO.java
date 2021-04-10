package demomaster.dao;


import java.util.List;

import demomaster.vo.TReportUserVo;
import demomaster.vo.plugin.TReportUserPriVo;
import demomaster.vo.plugin.TReportUserNoPriVo;


import org.apache.ibatis.annotations.Param;

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
public interface TReportUserDAO {

    /**
     * insert
     */
    int insert(TReportUserVo vo);

    /**
     * insert vos 批量插入
     */
    int inserts(@Param(value = "vos") List<TReportUserVo> vos);

    /**
     * 查询base
     */
    List<TReportUserVo> queryBase(TReportUserVo query);

    /**
     * update base (exclude value is null or "")
     */
    int updateBase(@Param(value = "source") TReportUserVo source, @Param(value = "target") TReportUserVo target);


    /**
     * update base (include value is null or "")
     */
    int updateBaseIncludeNull(@Param(value = "source") TReportUserVo source, @Param(value = "target") TReportUserVo target);

    /**
     * 删除base
     */
    int deleteBase(TReportUserVo vo);


    /**
     * 根据PrimaryKey查询
     * <p>
     * id : 
     * @param id
     * 
     */
    TReportUserVo queryByPrimaryKey(@Param(value = "id") String id);

    /**
     * 根据PrimaryKey删除
     * <p>
     * id : 
     * @param id
     * 
     */
    int deleteByPrimaryKey(@Param(value = "id") String id);

    /**
     * 根据PrimaryKey更新，会根据主键去更新其他的值(空值不覆盖有值)
     * <p>
     * id : 
     * @param id
     * 
     */
    int updateByPrimaryKey(@Param(value = "source") TReportUserNoPriVo source,@Param(value = "target") TReportUserPriVo target);

}
