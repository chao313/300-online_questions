package demomaster.vo.request;

import demomaster.vo.VHotQuestionVo;

/**
 * 这个是用于updateBase的request使用
 */
public class VHotQuestionRequestUpdateBase {

    /**
     * source -> 需要更新的
     */
    private VHotQuestionVo source;

    /**
     * target -> 目标条件
     */
    private VHotQuestionVo target;



    public VHotQuestionVo getSource() {
        return source;
    }

    public void setSource(VHotQuestionVo source) {
        this.source = source;
    }

    public VHotQuestionVo getTarget() {
        return target;
    }

    public void setTarget(VHotQuestionVo target) {
        this.target = target;
    }


    @Override
    public String toString() {
        return "VHotQuestionRequestUpdateBase{" +
                "source=" + source +
                ", target=" + target +
                '}';
    }

}
