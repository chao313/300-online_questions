package demomaster.serviceImpl;


import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;
import demomaster.vo.VReportAnswerAnswerVo;
import demomaster.dao.VReportAnswerAnswerDAO;
import demomaster.service.VReportAnswerAnswerService;
import demomaster.vo.plugin.VReportAnswerAnswerPriVo;
import demomaster.vo.plugin.VReportAnswerAnswerNoPriVo;



/**
 * 表名称      :v_report_answer_answer
 * 表类型      :VIEW
 * 表引擎      :
 * 表版本      :0
 * 行格式      :
 * 表创建      :
 * 字符集      :
 * 表注释      :VIEW
 */
@Service
public class VReportAnswerAnswerServiceImpl implements VReportAnswerAnswerService {

    @Autowired
    private VReportAnswerAnswerDAO dao;

    /**
     * insert
     */
    @Override
    public boolean insert(VReportAnswerAnswerVo vo) {

        return dao.insert(vo) > 0 ? true : false;

    }

    /**
     * insert vos 批量插入
     */
    @Override
    public boolean insert(List<VReportAnswerAnswerVo> vos) {

        return dao.inserts(vos) > 0 ? true : false;

    }

    /**
     * 查询base
     */
    @Override
    public List<VReportAnswerAnswerVo> queryBase(VReportAnswerAnswerVo query) {

        return dao.queryBase(query);

    }

    /**
     * update base (exclude value is null or "")
     */
    @Override
    public boolean updateBase(VReportAnswerAnswerVo source, VReportAnswerAnswerVo target) {

        return dao.updateBase(source, target) > 0 ? true : false;

    }

    /**
     * update base (include value is null or "")
     */
    @Override
    public boolean updateBaseIncludeNull(VReportAnswerAnswerVo source, VReportAnswerAnswerVo target) {

        return dao.updateBaseIncludeNull(source, target) > 0 ? true : false;

    }

    /**
     * 删除base
     */
    @Override
    public boolean deleteBase(VReportAnswerAnswerVo vo) {

        return dao.deleteBase(vo) > 0 ? true : false;

    }

}
