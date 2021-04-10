package demomaster.serviceImpl;


import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;
import demomaster.vo.VQuestionUserVo;
import demomaster.dao.VQuestionUserDAO;
import demomaster.service.VQuestionUserService;
import demomaster.vo.plugin.VQuestionUserPriVo;
import demomaster.vo.plugin.VQuestionUserNoPriVo;



/**
 * 表名称      :v_question_user
 * 表类型      :VIEW
 * 表引擎      :
 * 表版本      :0
 * 行格式      :
 * 表创建      :
 * 字符集      :
 * 表注释      :VIEW
 */
@Service
public class VQuestionUserServiceImpl implements VQuestionUserService {

    @Autowired
    private VQuestionUserDAO dao;

    /**
     * insert
     */
    @Override
    public boolean insert(VQuestionUserVo vo) {

        return dao.insert(vo) > 0 ? true : false;

    }

    /**
     * insert vos 批量插入
     */
    @Override
    public boolean insert(List<VQuestionUserVo> vos) {

        return dao.inserts(vos) > 0 ? true : false;

    }

    /**
     * 查询base
     */
    @Override
    public List<VQuestionUserVo> queryBase(VQuestionUserVo query) {

        return dao.queryBase(query);

    }

    /**
     * update base (exclude value is null or "")
     */
    @Override
    public boolean updateBase(VQuestionUserVo source, VQuestionUserVo target) {

        return dao.updateBase(source, target) > 0 ? true : false;

    }

    /**
     * update base (include value is null or "")
     */
    @Override
    public boolean updateBaseIncludeNull(VQuestionUserVo source, VQuestionUserVo target) {

        return dao.updateBaseIncludeNull(source, target) > 0 ? true : false;

    }

    /**
     * 删除base
     */
    @Override
    public boolean deleteBase(VQuestionUserVo vo) {

        return dao.deleteBase(vo) > 0 ? true : false;

    }

}
