package demomaster.vo.request;

import demomaster.vo.plugin.TAdminUserNoPriVo;
import demomaster.vo.plugin.TAdminUserPriVo;

/**
 * 这个是用于updateByKey的request使用
 */
public class TAdminUserRequestUpdatePrimaryKey {

    /**
     * source -> 需要更新的
     */
    private TAdminUserNoPriVo source;

    /**
     * target -> 目标条件
     */
    private TAdminUserPriVo target;



    public TAdminUserNoPriVo getSource() {
        return source;
    }

    public void setSource(TAdminUserNoPriVo source) {
        this.source = source;
    }

    public TAdminUserPriVo getTarget() {
        return target;
    }

    public void setTarget(TAdminUserPriVo target) {
        this.target = target;
    }


    @Override
    public String toString() {
        return "TAdminUserRequestUpdatePrimaryKey{" +
                "source=" + source +
                ", target=" + target +
                '}';
    }

}
