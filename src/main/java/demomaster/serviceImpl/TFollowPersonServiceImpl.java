package demomaster.serviceImpl;


import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;
import demomaster.vo.TFollowPersonVo;
import demomaster.dao.TFollowPersonDAO;
import demomaster.service.TFollowPersonService;
import demomaster.vo.plugin.TFollowPersonPriVo;
import demomaster.vo.plugin.TFollowPersonNoPriVo;



/**
 * 表名称      :t_follow_person
 * 表类型      :BASE TABLE
 * 表引擎      :InnoDB
 * 表版本      :10
 * 行格式      :Dynamic
 * 表创建      :2020-5-16
 * 字符集      :utf8_bin
 * 表注释      :用户关注
 */
@Service
public class TFollowPersonServiceImpl implements TFollowPersonService {

    @Autowired
    private TFollowPersonDAO dao;

    /**
     * insert
     */
    @Override
    public boolean insert(TFollowPersonVo vo) {

        return dao.insert(vo) > 0 ? true : false;

    }

    /**
     * insert vos 批量插入
     */
    @Override
    public boolean insert(List<TFollowPersonVo> vos) {

        return dao.inserts(vos) > 0 ? true : false;

    }

    /**
     * 查询base
     */
    @Override
    public List<TFollowPersonVo> queryBase(TFollowPersonVo query) {

        return dao.queryBase(query);

    }

    /**
     * update base (exclude value is null or "")
     */
    @Override
    public boolean updateBase(TFollowPersonVo source, TFollowPersonVo target) {

        return dao.updateBase(source, target) > 0 ? true : false;

    }

    /**
     * update base (include value is null or "")
     */
    @Override
    public boolean updateBaseIncludeNull(TFollowPersonVo source, TFollowPersonVo target) {

        return dao.updateBaseIncludeNull(source, target) > 0 ? true : false;

    }

    /**
     * 删除base
     */
    @Override
    public boolean deleteBase(TFollowPersonVo vo) {

        return dao.deleteBase(vo) > 0 ? true : false;

    }


    /**
     * 根据PrimaryKey查询
     * <p>
     * userNameFollow  被关注的人<p>
     * userName  关注的人
     */
    @Override
    public TFollowPersonVo queryByPrimaryKey(String userNameFollow, String userName) {

        return dao.queryByPrimaryKey(userNameFollow, userName);

    }

    /**
     * 根据PrimaryKey删除
     * <p>
     * userNameFollow : 被关注的人<p>
     * userName : 关注的人
     * @param userNameFollow
     * @param userName
     * 
     */
    @Override
    public boolean deleteByPrimaryKey(String userNameFollow, String userName) {

        return dao.deleteByPrimaryKey(userNameFollow, userName) > 0 ? true : false;

    }

    /**
     * 根据PrimaryKey更新，会根据主键去更新其他的值(空值不覆盖有值)
     * <p>
     * userNameFollow : 被关注的人<p>
     * userName : 关注的人
     * @param userNameFollow
     * @param userName
     * 
     */
    @Override
    public boolean updateByPrimaryKey(TFollowPersonNoPriVo source,TFollowPersonPriVo target){

        return dao.updateByPrimaryKey(source,target) > 0 ? true : false;

    }


}
