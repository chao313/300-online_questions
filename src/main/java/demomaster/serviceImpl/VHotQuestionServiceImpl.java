package demomaster.serviceImpl;


import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;
import demomaster.vo.VHotQuestionVo;
import demomaster.dao.VHotQuestionDAO;
import demomaster.service.VHotQuestionService;
import demomaster.vo.plugin.VHotQuestionPriVo;
import demomaster.vo.plugin.VHotQuestionNoPriVo;



/**
 * 表名称      :v_hot_question
 * 表类型      :VIEW
 * 表引擎      :
 * 表版本      :0
 * 行格式      :
 * 表创建      :
 * 字符集      :
 * 表注释      :VIEW
 */
@Service
public class VHotQuestionServiceImpl implements VHotQuestionService {

    @Autowired
    private VHotQuestionDAO dao;

    /**
     * insert
     */
    @Override
    public boolean insert(VHotQuestionVo vo) {

        return dao.insert(vo) > 0 ? true : false;

    }

    /**
     * insert vos 批量插入
     */
    @Override
    public boolean insert(List<VHotQuestionVo> vos) {

        return dao.inserts(vos) > 0 ? true : false;

    }

    /**
     * 查询base
     */
    @Override
    public List<VHotQuestionVo> queryBase(VHotQuestionVo query) {

        return dao.queryBase(query);

    }

    /**
     * update base (exclude value is null or "")
     */
    @Override
    public boolean updateBase(VHotQuestionVo source, VHotQuestionVo target) {

        return dao.updateBase(source, target) > 0 ? true : false;

    }

    /**
     * update base (include value is null or "")
     */
    @Override
    public boolean updateBaseIncludeNull(VHotQuestionVo source, VHotQuestionVo target) {

        return dao.updateBaseIncludeNull(source, target) > 0 ? true : false;

    }

    /**
     * 删除base
     */
    @Override
    public boolean deleteBase(VHotQuestionVo vo) {

        return dao.deleteBase(vo) > 0 ? true : false;

    }

}
