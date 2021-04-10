package demomaster.vo.request;

import demomaster.vo.VQuestionAnswerSumVo;

/**
 * 这个是用于updateBase的request使用
 */
public class VQuestionAnswerSumRequestUpdateBase {

    /**
     * source -> 需要更新的
     */
    private VQuestionAnswerSumVo source;

    /**
     * target -> 目标条件
     */
    private VQuestionAnswerSumVo target;



    public VQuestionAnswerSumVo getSource() {
        return source;
    }

    public void setSource(VQuestionAnswerSumVo source) {
        this.source = source;
    }

    public VQuestionAnswerSumVo getTarget() {
        return target;
    }

    public void setTarget(VQuestionAnswerSumVo target) {
        this.target = target;
    }


    @Override
    public String toString() {
        return "VQuestionAnswerSumRequestUpdateBase{" +
                "source=" + source +
                ", target=" + target +
                '}';
    }

}
