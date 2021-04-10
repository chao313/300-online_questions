package demomaster.vo.request;

import demomaster.vo.TFollowPersonVo;

/**
 * 这个是用于updateBase的request使用
 */
public class TFollowPersonRequestUpdateBase {

    /**
     * source -> 需要更新的
     */
    private TFollowPersonVo source;

    /**
     * target -> 目标条件
     */
    private TFollowPersonVo target;



    public TFollowPersonVo getSource() {
        return source;
    }

    public void setSource(TFollowPersonVo source) {
        this.source = source;
    }

    public TFollowPersonVo getTarget() {
        return target;
    }

    public void setTarget(TFollowPersonVo target) {
        this.target = target;
    }


    @Override
    public String toString() {
        return "TFollowPersonRequestUpdateBase{" +
                "source=" + source +
                ", target=" + target +
                '}';
    }

}
