package demomaster.vo.request;

import demomaster.vo.VFollowPersonUserVo;

/**
 * 这个是用于updateBase的request使用
 */
public class VFollowPersonUserRequestUpdateBase {

    /**
     * source -> 需要更新的
     */
    private VFollowPersonUserVo source;

    /**
     * target -> 目标条件
     */
    private VFollowPersonUserVo target;



    public VFollowPersonUserVo getSource() {
        return source;
    }

    public void setSource(VFollowPersonUserVo source) {
        this.source = source;
    }

    public VFollowPersonUserVo getTarget() {
        return target;
    }

    public void setTarget(VFollowPersonUserVo target) {
        this.target = target;
    }


    @Override
    public String toString() {
        return "VFollowPersonUserRequestUpdateBase{" +
                "source=" + source +
                ", target=" + target +
                '}';
    }

}
