package demomaster.serviceImpl;


import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;
import demomaster.vo.VAnswerUserVo;
import demomaster.dao.VAnswerUserDAO;
import demomaster.service.VAnswerUserService;
import demomaster.vo.plugin.VAnswerUserPriVo;
import demomaster.vo.plugin.VAnswerUserNoPriVo;



/**
 * 表名称      :v_answer_user
 * 表类型      :VIEW
 * 表引擎      :
 * 表版本      :0
 * 行格式      :
 * 表创建      :
 * 字符集      :
 * 表注释      :VIEW
 */
@Service
public class VAnswerUserServiceImpl implements VAnswerUserService {

    @Autowired
    private VAnswerUserDAO dao;

    /**
     * insert
     */
    @Override
    public boolean insert(VAnswerUserVo vo) {

        return dao.insert(vo) > 0 ? true : false;

    }

    /**
     * insert vos 批量插入
     */
    @Override
    public boolean insert(List<VAnswerUserVo> vos) {

        return dao.inserts(vos) > 0 ? true : false;

    }

    /**
     * 查询base
     */
    @Override
    public List<VAnswerUserVo> queryBase(VAnswerUserVo query) {

        return dao.queryBase(query);

    }

    /**
     * update base (exclude value is null or "")
     */
    @Override
    public boolean updateBase(VAnswerUserVo source, VAnswerUserVo target) {

        return dao.updateBase(source, target) > 0 ? true : false;

    }

    /**
     * update base (include value is null or "")
     */
    @Override
    public boolean updateBaseIncludeNull(VAnswerUserVo source, VAnswerUserVo target) {

        return dao.updateBaseIncludeNull(source, target) > 0 ? true : false;

    }

    /**
     * 删除base
     */
    @Override
    public boolean deleteBase(VAnswerUserVo vo) {

        return dao.deleteBase(vo) > 0 ? true : false;

    }

}
