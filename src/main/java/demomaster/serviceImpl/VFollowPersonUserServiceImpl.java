package demomaster.serviceImpl;


import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;
import demomaster.vo.VFollowPersonUserVo;
import demomaster.dao.VFollowPersonUserDAO;
import demomaster.service.VFollowPersonUserService;
import demomaster.vo.plugin.VFollowPersonUserPriVo;
import demomaster.vo.plugin.VFollowPersonUserNoPriVo;



/**
 * 表名称      :v_follow_person_user
 * 表类型      :VIEW
 * 表引擎      :
 * 表版本      :0
 * 行格式      :
 * 表创建      :
 * 字符集      :
 * 表注释      :VIEW
 */
@Service
public class VFollowPersonUserServiceImpl implements VFollowPersonUserService {

    @Autowired
    private VFollowPersonUserDAO dao;

    /**
     * insert
     */
    @Override
    public boolean insert(VFollowPersonUserVo vo) {

        return dao.insert(vo) > 0 ? true : false;

    }

    /**
     * insert vos 批量插入
     */
    @Override
    public boolean insert(List<VFollowPersonUserVo> vos) {

        return dao.inserts(vos) > 0 ? true : false;

    }

    /**
     * 查询base
     */
    @Override
    public List<VFollowPersonUserVo> queryBase(VFollowPersonUserVo query) {

        return dao.queryBase(query);

    }

    /**
     * update base (exclude value is null or "")
     */
    @Override
    public boolean updateBase(VFollowPersonUserVo source, VFollowPersonUserVo target) {

        return dao.updateBase(source, target) > 0 ? true : false;

    }

    /**
     * update base (include value is null or "")
     */
    @Override
    public boolean updateBaseIncludeNull(VFollowPersonUserVo source, VFollowPersonUserVo target) {

        return dao.updateBaseIncludeNull(source, target) > 0 ? true : false;

    }

    /**
     * 删除base
     */
    @Override
    public boolean deleteBase(VFollowPersonUserVo vo) {

        return dao.deleteBase(vo) > 0 ? true : false;

    }

}
