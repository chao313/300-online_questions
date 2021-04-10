package demomaster.service;


import java.util.List;

import demomaster.vo.TTagVo;
import demomaster.vo.plugin.TTagPriVo;
import demomaster.vo.plugin.TTagNoPriVo;


/**
 * 表名称      :t_tag
 * 表类型      :BASE TABLE
 * 表引擎      :InnoDB
 * 表版本      :10
 * 行格式      :Dynamic
 * 表创建      :2020-5-13
 * 字符集      :utf8_bin
 * 表注释      :
 */
public interface TTagService {

    /**
     * insert
     */
    boolean insert(TTagVo vo);


    /**
     * insert vos 批量插入
     */
    boolean insert(List<TTagVo> vos);


    /**
     * 查询base
     */
    List<TTagVo> queryBase(TTagVo query);


    /**
     * update base (exclude value is null or "")
     */
    boolean updateBase(TTagVo source, TTagVo target);

    /**
     * update base (include value is null or "")
     */
    boolean updateBaseIncludeNull(TTagVo source, TTagVo target);

    /**
     * 删除base
     */
    boolean deleteBase(TTagVo vo);


    /**
     * 根据PrimaryKey查询
     * <p>
     * id : 
     */
     TTagVo queryByPrimaryKey(String id);

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
    boolean updateByPrimaryKey(TTagNoPriVo source,TTagPriVo target);



}
