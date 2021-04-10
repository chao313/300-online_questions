package demomaster.serviceImpl;


import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;
import demomaster.vo.TFollowQuestionVo;
import demomaster.dao.TFollowQuestionDAO;
import demomaster.service.TFollowQuestionService;
import demomaster.vo.plugin.TFollowQuestionPriVo;
import demomaster.vo.plugin.TFollowQuestionNoPriVo;



/**
 * 表名称      :t_follow_question
 * 表类型      :BASE TABLE
 * 表引擎      :InnoDB
 * 表版本      :10
 * 行格式      :Dynamic
 * 表创建      :2020-5-16
 * 字符集      :utf8_bin
 * 表注释      :问题关注
 */
@Service
public class TFollowQuestionServiceImpl implements TFollowQuestionService {

    @Autowired
    private TFollowQuestionDAO dao;

    /**
     * insert
     */
    @Override
    public boolean insert(TFollowQuestionVo vo) {

        return dao.insert(vo) > 0 ? true : false;

    }

    /**
     * insert vos 批量插入
     */
    @Override
    public boolean insert(List<TFollowQuestionVo> vos) {

        return dao.inserts(vos) > 0 ? true : false;

    }

    /**
     * 查询base
     */
    @Override
    public List<TFollowQuestionVo> queryBase(TFollowQuestionVo query) {

        return dao.queryBase(query);

    }

    /**
     * update base (exclude value is null or "")
     */
    @Override
    public boolean updateBase(TFollowQuestionVo source, TFollowQuestionVo target) {

        return dao.updateBase(source, target) > 0 ? true : false;

    }

    /**
     * update base (include value is null or "")
     */
    @Override
    public boolean updateBaseIncludeNull(TFollowQuestionVo source, TFollowQuestionVo target) {

        return dao.updateBaseIncludeNull(source, target) > 0 ? true : false;

    }

    /**
     * 删除base
     */
    @Override
    public boolean deleteBase(TFollowQuestionVo vo) {

        return dao.deleteBase(vo) > 0 ? true : false;

    }


    /**
     * 根据PrimaryKey查询
     * <p>
     * questionId  问题的id<p>
     * userName  关注的人
     */
    @Override
    public TFollowQuestionVo queryByPrimaryKey(String questionId, String userName) {

        return dao.queryByPrimaryKey(questionId, userName);

    }

    /**
     * 根据PrimaryKey删除
     * <p>
     * questionId : 问题的id<p>
     * userName : 关注的人
     * @param questionId
     * @param userName
     * 
     */
    @Override
    public boolean deleteByPrimaryKey(String questionId, String userName) {

        return dao.deleteByPrimaryKey(questionId, userName) > 0 ? true : false;

    }

    /**
     * 根据PrimaryKey更新，会根据主键去更新其他的值(空值不覆盖有值)
     * <p>
     * questionId : 问题的id<p>
     * userName : 关注的人
     * @param questionId
     * @param userName
     * 
     */
    @Override
    public boolean updateByPrimaryKey(TFollowQuestionNoPriVo source,TFollowQuestionPriVo target){

        return dao.updateByPrimaryKey(source,target) > 0 ? true : false;

    }


}
