package demomaster.vo.request;

import demomaster.vo.TUserVo;

/**
 * 这个是用于updateBase的request使用
 */
public class TUserRequestUpdateBase {

    /**
     * source -> 需要更新的
     */
    private TUserVo source;

    /**
     * target -> 目标条件
     */
    private TUserVo target;



    public TUserVo getSource() {
        return source;
    }

    public void setSource(TUserVo source) {
        this.source = source;
    }

    public TUserVo getTarget() {
        return target;
    }

    public void setTarget(TUserVo target) {
        this.target = target;
    }


    @Override
    public String toString() {
        return "TUserRequestUpdateBase{" +
                "source=" + source +
                ", target=" + target +
                '}';
    }

}
