package demomaster.serviceImpl;


import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;
import demomaster.vo.VAnswerSecondUserVo;
import demomaster.dao.VAnswerSecondUserDAO;
import demomaster.service.VAnswerSecondUserService;
import demomaster.vo.plugin.VAnswerSecondUserPriVo;
import demomaster.vo.plugin.VAnswerSecondUserNoPriVo;



/**
 * 表名称      :v_answer_second_user
 * 表类型      :VIEW
 * 表引擎      :
 * 表版本      :0
 * 行格式      :
 * 表创建      :
 * 字符集      :
 * 表注释      :VIEW
 */
@Service
public class VAnswerSecondUserServiceImpl implements VAnswerSecondUserService {

    @Autowired
    private VAnswerSecondUserDAO dao;

    /**
     * insert
     */
    @Override
    public boolean insert(VAnswerSecondUserVo vo) {

        return dao.insert(vo) > 0 ? true : false;

    }

    /**
     * insert vos 批量插入
     */
    @Override
    public boolean insert(List<VAnswerSecondUserVo> vos) {

        return dao.inserts(vos) > 0 ? true : false;

    }

    /**
     * 查询base
     */
    @Override
    public List<VAnswerSecondUserVo> queryBase(VAnswerSecondUserVo query) {

        return dao.queryBase(query);

    }

    /**
     * update base (exclude value is null or "")
     */
    @Override
    public boolean updateBase(VAnswerSecondUserVo source, VAnswerSecondUserVo target) {

        return dao.updateBase(source, target) > 0 ? true : false;

    }

    /**
     * update base (include value is null or "")
     */
    @Override
    public boolean updateBaseIncludeNull(VAnswerSecondUserVo source, VAnswerSecondUserVo target) {

        return dao.updateBaseIncludeNull(source, target) > 0 ? true : false;

    }

    /**
     * 删除base
     */
    @Override
    public boolean deleteBase(VAnswerSecondUserVo vo) {

        return dao.deleteBase(vo) > 0 ? true : false;

    }

}
