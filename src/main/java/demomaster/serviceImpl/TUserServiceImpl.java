package demomaster.serviceImpl;


import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;
import demomaster.vo.TUserVo;
import demomaster.dao.TUserDAO;
import demomaster.service.TUserService;
import demomaster.vo.plugin.TUserPriVo;
import demomaster.vo.plugin.TUserNoPriVo;



/**
 * 表名称      :t_user
 * 表类型      :BASE TABLE
 * 表引擎      :InnoDB
 * 表版本      :10
 * 行格式      :Dynamic
 * 表创建      :2020-5-17
 * 字符集      :utf8_general_ci
 * 表注释      :
 */
@Service
public class TUserServiceImpl implements TUserService {

    @Autowired
    private TUserDAO dao;

    /**
     * insert
     */
    @Override
    public boolean insert(TUserVo vo) {

        return dao.insert(vo) > 0 ? true : false;

    }

    /**
     * insert vos 批量插入
     */
    @Override
    public boolean insert(List<TUserVo> vos) {

        return dao.inserts(vos) > 0 ? true : false;

    }

    /**
     * 查询base
     */
    @Override
    public List<TUserVo> queryBase(TUserVo query) {

        return dao.queryBase(query);

    }

    /**
     * update base (exclude value is null or "")
     */
    @Override
    public boolean updateBase(TUserVo source, TUserVo target) {

        return dao.updateBase(source, target) > 0 ? true : false;

    }

    /**
     * update base (include value is null or "")
     */
    @Override
    public boolean updateBaseIncludeNull(TUserVo source, TUserVo target) {

        return dao.updateBaseIncludeNull(source, target) > 0 ? true : false;

    }

    /**
     * 删除base
     */
    @Override
    public boolean deleteBase(TUserVo vo) {

        return dao.deleteBase(vo) > 0 ? true : false;

    }


    /**
     * 根据PrimaryKey查询
     * <p>
     * name  用户姓名
     */
    @Override
    public TUserVo queryByPrimaryKey(String name) {

        return dao.queryByPrimaryKey(name);

    }

    /**
     * 根据PrimaryKey删除
     * <p>
     * name : 用户姓名
     * @param name
     * 
     */
    @Override
    public boolean deleteByPrimaryKey(String name) {

        return dao.deleteByPrimaryKey(name) > 0 ? true : false;

    }

    /**
     * 根据PrimaryKey更新，会根据主键去更新其他的值(空值不覆盖有值)
     * <p>
     * name : 用户姓名
     * @param name
     * 
     */
    @Override
    public boolean updateByPrimaryKey(TUserNoPriVo source,TUserPriVo target){

        return dao.updateByPrimaryKey(source,target) > 0 ? true : false;

    }


}
