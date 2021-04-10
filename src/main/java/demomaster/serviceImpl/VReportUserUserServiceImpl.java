package demomaster.serviceImpl;


import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;
import demomaster.vo.VReportUserUserVo;
import demomaster.dao.VReportUserUserDAO;
import demomaster.service.VReportUserUserService;
import demomaster.vo.plugin.VReportUserUserPriVo;
import demomaster.vo.plugin.VReportUserUserNoPriVo;



/**
 * 表名称      :v_report_user_user
 * 表类型      :VIEW
 * 表引擎      :
 * 表版本      :0
 * 行格式      :
 * 表创建      :
 * 字符集      :
 * 表注释      :VIEW
 */
@Service
public class VReportUserUserServiceImpl implements VReportUserUserService {

    @Autowired
    private VReportUserUserDAO dao;

    /**
     * insert
     */
    @Override
    public boolean insert(VReportUserUserVo vo) {

        return dao.insert(vo) > 0 ? true : false;

    }

    /**
     * insert vos 批量插入
     */
    @Override
    public boolean insert(List<VReportUserUserVo> vos) {

        return dao.inserts(vos) > 0 ? true : false;

    }

    /**
     * 查询base
     */
    @Override
    public List<VReportUserUserVo> queryBase(VReportUserUserVo query) {

        return dao.queryBase(query);

    }

    /**
     * update base (exclude value is null or "")
     */
    @Override
    public boolean updateBase(VReportUserUserVo source, VReportUserUserVo target) {

        return dao.updateBase(source, target) > 0 ? true : false;

    }

    /**
     * update base (include value is null or "")
     */
    @Override
    public boolean updateBaseIncludeNull(VReportUserUserVo source, VReportUserUserVo target) {

        return dao.updateBaseIncludeNull(source, target) > 0 ? true : false;

    }

    /**
     * 删除base
     */
    @Override
    public boolean deleteBase(VReportUserUserVo vo) {

        return dao.deleteBase(vo) > 0 ? true : false;

    }

}
