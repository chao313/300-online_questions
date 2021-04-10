package demomaster.serviceImpl;


import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;
import demomaster.vo.VReportQuestionQuestitionVo;
import demomaster.dao.VReportQuestionQuestitionDAO;
import demomaster.service.VReportQuestionQuestitionService;
import demomaster.vo.plugin.VReportQuestionQuestitionPriVo;
import demomaster.vo.plugin.VReportQuestionQuestitionNoPriVo;



/**
 * 表名称      :v_report_question_questition
 * 表类型      :VIEW
 * 表引擎      :
 * 表版本      :0
 * 行格式      :
 * 表创建      :
 * 字符集      :
 * 表注释      :VIEW
 */
@Service
public class VReportQuestionQuestitionServiceImpl implements VReportQuestionQuestitionService {

    @Autowired
    private VReportQuestionQuestitionDAO dao;

    /**
     * insert
     */
    @Override
    public boolean insert(VReportQuestionQuestitionVo vo) {

        return dao.insert(vo) > 0 ? true : false;

    }

    /**
     * insert vos 批量插入
     */
    @Override
    public boolean insert(List<VReportQuestionQuestitionVo> vos) {

        return dao.inserts(vos) > 0 ? true : false;

    }

    /**
     * 查询base
     */
    @Override
    public List<VReportQuestionQuestitionVo> queryBase(VReportQuestionQuestitionVo query) {

        return dao.queryBase(query);

    }

    /**
     * update base (exclude value is null or "")
     */
    @Override
    public boolean updateBase(VReportQuestionQuestitionVo source, VReportQuestionQuestitionVo target) {

        return dao.updateBase(source, target) > 0 ? true : false;

    }

    /**
     * update base (include value is null or "")
     */
    @Override
    public boolean updateBaseIncludeNull(VReportQuestionQuestitionVo source, VReportQuestionQuestitionVo target) {

        return dao.updateBaseIncludeNull(source, target) > 0 ? true : false;

    }

    /**
     * 删除base
     */
    @Override
    public boolean deleteBase(VReportQuestionQuestitionVo vo) {

        return dao.deleteBase(vo) > 0 ? true : false;

    }

}
