package demomaster.serviceImpl;


import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;
import demomaster.vo.TAnswerVo;
import demomaster.dao.TAnswerDAO;
import demomaster.service.TAnswerService;
import demomaster.vo.plugin.TAnswerPriVo;
import demomaster.vo.plugin.TAnswerNoPriVo;



/**
 * 表名称      :t_answer
 * 表类型      :BASE TABLE
 * 表引擎      :InnoDB
 * 表版本      :10
 * 行格式      :Dynamic
 * 表创建      :2020-5-16
 * 字符集      :utf8_bin
 * 表注释      :回答时间
 */
@Service
public class TAnswerServiceImpl implements TAnswerService {

    @Autowired
    private TAnswerDAO dao;

    /**
     * insert
     */
    @Override
    public boolean insert(TAnswerVo vo) {

        return dao.insert(vo) > 0 ? true : false;

    }

    /**
     * insert vos 批量插入
     */
    @Override
    public boolean insert(List<TAnswerVo> vos) {

        return dao.inserts(vos) > 0 ? true : false;

    }

    /**
     * 查询base
     */
    @Override
    public List<TAnswerVo> queryBase(TAnswerVo query) {

        return dao.queryBase(query);

    }

    /**
     * update base (exclude value is null or "")
     */
    @Override
    public boolean updateBase(TAnswerVo source, TAnswerVo target) {

        return dao.updateBase(source, target) > 0 ? true : false;

    }

    /**
     * update base (include value is null or "")
     */
    @Override
    public boolean updateBaseIncludeNull(TAnswerVo source, TAnswerVo target) {

        return dao.updateBaseIncludeNull(source, target) > 0 ? true : false;

    }

    /**
     * 删除base
     */
    @Override
    public boolean deleteBase(TAnswerVo vo) {

        return dao.deleteBase(vo) > 0 ? true : false;

    }


    /**
     * 根据PrimaryKey查询
     * <p>
     * id  回答的uuid
     */
    @Override
    public TAnswerVo queryByPrimaryKey(String id) {

        return dao.queryByPrimaryKey(id);

    }

    /**
     * 根据PrimaryKey删除
     * <p>
     * id : 回答的uuid
     * @param id
     * 
     */
    @Override
    public boolean deleteByPrimaryKey(String id) {

        return dao.deleteByPrimaryKey(id) > 0 ? true : false;

    }

    /**
     * 根据PrimaryKey更新，会根据主键去更新其他的值(空值不覆盖有值)
     * <p>
     * id : 回答的uuid
     * @param id
     * 
     */
    @Override
    public boolean updateByPrimaryKey(TAnswerNoPriVo source,TAnswerPriVo target){

        return dao.updateByPrimaryKey(source,target) > 0 ? true : false;

    }


}
