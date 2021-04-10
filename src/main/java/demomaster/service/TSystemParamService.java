package demomaster.service;


import java.util.List;

import demomaster.vo.TSystemParamVo;
import demomaster.vo.plugin.TSystemParamPriVo;
import demomaster.vo.plugin.TSystemParamNoPriVo;


/**
 * 表名称      :t_system_param
 * 表类型      :BASE TABLE
 * 表引擎      :InnoDB
 * 表版本      :10
 * 行格式      :Dynamic
 * 表创建      :2020-5-12
 * 字符集      :utf8mb4_general_ci
 * 表注释      :系统参数表
 */
public interface TSystemParamService {

    /**
     * insert
     */
    boolean insert(TSystemParamVo vo);


    /**
     * insert vos 批量插入
     */
    boolean insert(List<TSystemParamVo> vos);


    /**
     * 查询base
     */
    List<TSystemParamVo> queryBase(TSystemParamVo query);


    /**
     * update base (exclude value is null or "")
     */
    boolean updateBase(TSystemParamVo source, TSystemParamVo target);

    /**
     * update base (include value is null or "")
     */
    boolean updateBaseIncludeNull(TSystemParamVo source, TSystemParamVo target);

    /**
     * 删除base
     */
    boolean deleteBase(TSystemParamVo vo);


    /**
     * 根据PrimaryKey查询
     * <p>
     * paramId : 参数id
     */
     TSystemParamVo queryByPrimaryKey(String paramId);

    /**
     * 根据PrimaryKey删除
     * <p>
     * paramId : 参数id
     * @param paramId
     * 
     */
    boolean deleteByPrimaryKey(String paramId);

    /**
     * 根据PrimaryKey更新，会根据主键去更新其他的值(空值不覆盖有值) -> 主键不更新
     * <p>
     * paramId : 参数id
     * @param paramId
     * 
     */
    boolean updateByPrimaryKey(TSystemParamNoPriVo source,TSystemParamPriVo target);



}
