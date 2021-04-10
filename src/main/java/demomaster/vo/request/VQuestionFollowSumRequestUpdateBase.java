package demomaster.vo.request;

import demomaster.vo.VQuestionFollowSumVo;

/**
 * 这个是用于updateBase的request使用
 */
public class VQuestionFollowSumRequestUpdateBase {

    /**
     * source -> 需要更新的
     */
    private VQuestionFollowSumVo source;

    /**
     * target -> 目标条件
     */
    private VQuestionFollowSumVo target;



    public VQuestionFollowSumVo getSource() {
        return source;
    }

    public void setSource(VQuestionFollowSumVo source) {
        this.source = source;
    }

    public VQuestionFollowSumVo getTarget() {
        return target;
    }

    public void setTarget(VQuestionFollowSumVo target) {
        this.target = target;
    }


    @Override
    public String toString() {
        return "VQuestionFollowSumRequestUpdateBase{" +
                "source=" + source +
                ", target=" + target +
                '}';
    }

}
