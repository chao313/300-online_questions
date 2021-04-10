package demomaster.serviceImpl;


import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;
import demomaster.vo.TAdminUserVo;
import demomaster.dao.TAdminUserDAO;
import demomaster.service.TAdminUserService;
import demomaster.vo.plugin.TAdminUserPriVo;
import demomaster.vo.plugin.TAdminUserNoPriVo;



/**
 * 表名称      :t_admin_user
 * 表类型      :BASE TABLE
 * 表引擎      :InnoDB
 * 表版本      :10
 * 行格式      :Dynamic
 * 表创建      :2020-5-16
 * 字符集      :utf8_general_ci
 * 表注释      :
 */
@Service
public class TAdminUserServiceImpl implements TAdminUserService {

    @Autowired
    private TAdminUserDAO dao;

    /**
     * insert
     */
    @Override
    public boolean insert(TAdminUserVo vo) {

        return dao.insert(vo) > 0 ? true : false;

    }

    /**
     * insert vos 批量插入
     */
    @Override
    public boolean insert(List<TAdminUserVo> vos) {

        return dao.inserts(vos) > 0 ? true : false;

    }

    /**
     * 查询base
     */
    @Override
    public List<TAdminUserVo> queryBase(TAdminUserVo query) {

        return dao.queryBase(query);

    }

    /**
     * update base (exclude value is null or "")
     */
    @Override
    public boolean updateBase(TAdminUserVo source, TAdminUserVo target) {

        return dao.updateBase(source, target) > 0 ? true : false;

    }

    /**
     * update base (include value is null or "")
     */
    @Override
    public boolean updateBaseIncludeNull(TAdminUserVo source, TAdminUserVo target) {

        return dao.updateBaseIncludeNull(source, target) > 0 ? true : false;

    }

    /**
     * 删除base
     */
    @Override
    public boolean deleteBase(TAdminUserVo vo) {

        return dao.deleteBase(vo) > 0 ? true : false;

    }


    /**
     * 根据PrimaryKey查询
     * <p>
     * id  用户登录ID
     */
    @Override
    public TAdminUserVo queryByPrimaryKey(String id) {

        return dao.queryByPrimaryKey(id);

    }

    /**
     * 根据PrimaryKey删除
     * <p>
     * id : 用户登录ID
     * @param id
     * 
     */
    @Override
    public boolean deleteByPrimaryKey(String id) {

        return dao.deleteByPrimaryKey(id) > 0 ? true : false;

    }

    /**
     * 根据PrimaryKey更新，会根据主键去更新其他的值(空值不覆盖有值)
     * <p>
     * id : 用户登录ID
     * @param id
     * 
     */
    @Override
    public boolean updateByPrimaryKey(TAdminUserNoPriVo source,TAdminUserPriVo target){

        return dao.updateByPrimaryKey(source,target) > 0 ? true : false;

    }


}
