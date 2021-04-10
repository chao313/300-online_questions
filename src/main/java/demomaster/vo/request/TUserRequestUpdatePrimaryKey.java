package demomaster.vo.request;

import demomaster.vo.plugin.TUserNoPriVo;
import demomaster.vo.plugin.TUserPriVo;

/**
 * 这个是用于updateByKey的request使用
 */
public class TUserRequestUpdatePrimaryKey {

    /**
     * source -> 需要更新的
     */
    private TUserNoPriVo source;

    /**
     * target -> 目标条件
     */
    private TUserPriVo target;



    public TUserNoPriVo getSource() {
        return source;
    }

    public void setSource(TUserNoPriVo source) {
        this.source = source;
    }

    public TUserPriVo getTarget() {
        return target;
    }

    public void setTarget(TUserPriVo target) {
        this.target = target;
    }


    @Override
    public String toString() {
        return "TUserRequestUpdatePrimaryKey{" +
                "source=" + source +
                ", target=" + target +
                '}';
    }

}
