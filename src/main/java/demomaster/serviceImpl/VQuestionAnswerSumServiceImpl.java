package demomaster.serviceImpl;


import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;
import demomaster.vo.VQuestionAnswerSumVo;
import demomaster.dao.VQuestionAnswerSumDAO;
import demomaster.service.VQuestionAnswerSumService;
import demomaster.vo.plugin.VQuestionAnswerSumPriVo;
import demomaster.vo.plugin.VQuestionAnswerSumNoPriVo;



/**
 * 表名称      :v_question_answer_sum
 * 表类型      :VIEW
 * 表引擎      :
 * 表版本      :0
 * 行格式      :
 * 表创建      :
 * 字符集      :
 * 表注释      :VIEW
 */
@Service
public class VQuestionAnswerSumServiceImpl implements VQuestionAnswerSumService {

    @Autowired
    private VQuestionAnswerSumDAO dao;

    /**
     * insert
     */
    @Override
    public boolean insert(VQuestionAnswerSumVo vo) {

        return dao.insert(vo) > 0 ? true : false;

    }

    /**
     * insert vos 批量插入
     */
    @Override
    public boolean insert(List<VQuestionAnswerSumVo> vos) {

        return dao.inserts(vos) > 0 ? true : false;

    }

    /**
     * 查询base
     */
    @Override
    public List<VQuestionAnswerSumVo> queryBase(VQuestionAnswerSumVo query) {

        return dao.queryBase(query);

    }

    /**
     * update base (exclude value is null or "")
     */
    @Override
    public boolean updateBase(VQuestionAnswerSumVo source, VQuestionAnswerSumVo target) {

        return dao.updateBase(source, target) > 0 ? true : false;

    }

    /**
     * update base (include value is null or "")
     */
    @Override
    public boolean updateBaseIncludeNull(VQuestionAnswerSumVo source, VQuestionAnswerSumVo target) {

        return dao.updateBaseIncludeNull(source, target) > 0 ? true : false;

    }

    /**
     * 删除base
     */
    @Override
    public boolean deleteBase(VQuestionAnswerSumVo vo) {

        return dao.deleteBase(vo) > 0 ? true : false;

    }

}
