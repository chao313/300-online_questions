package demomaster.vo.request;

import demomaster.vo.plugin.VQuestionAnswerSumNoPriVo;
import demomaster.vo.plugin.VQuestionAnswerSumPriVo;

/**
 * 这个是用于updateByKey的request使用
 */
public class VQuestionAnswerSumRequestUpdatePrimaryKey {

    /**
     * source -> 需要更新的
     */
    private VQuestionAnswerSumNoPriVo source;

    /**
     * target -> 目标条件
     */
    private VQuestionAnswerSumPriVo target;



    public VQuestionAnswerSumNoPriVo getSource() {
        return source;
    }

    public void setSource(VQuestionAnswerSumNoPriVo source) {
        this.source = source;
    }

    public VQuestionAnswerSumPriVo getTarget() {
        return target;
    }

    public void setTarget(VQuestionAnswerSumPriVo target) {
        this.target = target;
    }


    @Override
    public String toString() {
        return "VQuestionAnswerSumRequestUpdatePrimaryKey{" +
                "source=" + source +
                ", target=" + target +
                '}';
    }

}
