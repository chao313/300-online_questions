package demomaster.vo.request;

import demomaster.vo.plugin.VFollowPersonUserNoPriVo;
import demomaster.vo.plugin.VFollowPersonUserPriVo;

/**
 * 这个是用于updateByKey的request使用
 */
public class VFollowPersonUserRequestUpdatePrimaryKey {

    /**
     * source -> 需要更新的
     */
    private VFollowPersonUserNoPriVo source;

    /**
     * target -> 目标条件
     */
    private VFollowPersonUserPriVo target;



    public VFollowPersonUserNoPriVo getSource() {
        return source;
    }

    public void setSource(VFollowPersonUserNoPriVo source) {
        this.source = source;
    }

    public VFollowPersonUserPriVo getTarget() {
        return target;
    }

    public void setTarget(VFollowPersonUserPriVo target) {
        this.target = target;
    }


    @Override
    public String toString() {
        return "VFollowPersonUserRequestUpdatePrimaryKey{" +
                "source=" + source +
                ", target=" + target +
                '}';
    }

}
