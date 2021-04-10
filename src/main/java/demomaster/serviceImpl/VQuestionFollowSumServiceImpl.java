package demomaster.serviceImpl;


import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;
import demomaster.vo.VQuestionFollowSumVo;
import demomaster.dao.VQuestionFollowSumDAO;
import demomaster.service.VQuestionFollowSumService;
import demomaster.vo.plugin.VQuestionFollowSumPriVo;
import demomaster.vo.plugin.VQuestionFollowSumNoPriVo;



/**
 * 表名称      :v_question_follow_sum
 * 表类型      :VIEW
 * 表引擎      :
 * 表版本      :0
 * 行格式      :
 * 表创建      :
 * 字符集      :
 * 表注释      :VIEW
 */
@Service
public class VQuestionFollowSumServiceImpl implements VQuestionFollowSumService {

    @Autowired
    private VQuestionFollowSumDAO dao;

    /**
     * insert
     */
    @Override
    public boolean insert(VQuestionFollowSumVo vo) {

        return dao.insert(vo) > 0 ? true : false;

    }

    /**
     * insert vos 批量插入
     */
    @Override
    public boolean insert(List<VQuestionFollowSumVo> vos) {

        return dao.inserts(vos) > 0 ? true : false;

    }

    /**
     * 查询base
     */
    @Override
    public List<VQuestionFollowSumVo> queryBase(VQuestionFollowSumVo query) {

        return dao.queryBase(query);

    }

    /**
     * update base (exclude value is null or "")
     */
    @Override
    public boolean updateBase(VQuestionFollowSumVo source, VQuestionFollowSumVo target) {

        return dao.updateBase(source, target) > 0 ? true : false;

    }

    /**
     * update base (include value is null or "")
     */
    @Override
    public boolean updateBaseIncludeNull(VQuestionFollowSumVo source, VQuestionFollowSumVo target) {

        return dao.updateBaseIncludeNull(source, target) > 0 ? true : false;

    }

    /**
     * 删除base
     */
    @Override
    public boolean deleteBase(VQuestionFollowSumVo vo) {

        return dao.deleteBase(vo) > 0 ? true : false;

    }

}
