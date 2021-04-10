package demomaster.service;


import java.util.List;

import demomaster.vo.Vo;
import demomaster.vo.plugin.PriVo;
import demomaster.vo.plugin.NoPriVo;


/**
 * 表名称      :
 * 表类型      :
 * 表引擎      :
 * 表版本      :0
 * 行格式      :
 * 表创建      :
 * 字符集      :
 * 表注释      :
 */
public interface Service {

    /**
     * insert
     */
    boolean insert(Vo vo);


    /**
     * insert vos 批量插入
     */
    boolean insert(List<Vo> vos);


    /**
     * 查询base
     */
    List<Vo> queryBase(Vo query);


    /**
     * update base (exclude value is null or "")
     */
    boolean updateBase(Vo source, Vo target);

    /**
     * update base (include value is null or "")
     */
    boolean updateBaseIncludeNull(Vo source, Vo target);

    /**
     * 删除base
     */
    boolean deleteBase(Vo vo);


}
