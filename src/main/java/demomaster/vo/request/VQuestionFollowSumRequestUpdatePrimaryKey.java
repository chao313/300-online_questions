package demomaster.vo.request;

import demomaster.vo.plugin.VQuestionFollowSumNoPriVo;
import demomaster.vo.plugin.VQuestionFollowSumPriVo;

/**
 * 这个是用于updateByKey的request使用
 */
public class VQuestionFollowSumRequestUpdatePrimaryKey {

    /**
     * source -> 需要更新的
     */
    private VQuestionFollowSumNoPriVo source;

    /**
     * target -> 目标条件
     */
    private VQuestionFollowSumPriVo target;



    public VQuestionFollowSumNoPriVo getSource() {
        return source;
    }

    public void setSource(VQuestionFollowSumNoPriVo source) {
        this.source = source;
    }

    public VQuestionFollowSumPriVo getTarget() {
        return target;
    }

    public void setTarget(VQuestionFollowSumPriVo target) {
        this.target = target;
    }


    @Override
    public String toString() {
        return "VQuestionFollowSumRequestUpdatePrimaryKey{" +
                "source=" + source +
                ", target=" + target +
                '}';
    }

}
