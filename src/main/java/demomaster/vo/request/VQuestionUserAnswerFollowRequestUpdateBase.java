package demomaster.vo.request;

import demomaster.vo.VQuestionUserAnswerFollowVo;

/**
 * 这个是用于updateBase的request使用
 */
public class VQuestionUserAnswerFollowRequestUpdateBase {

    /**
     * source -> 需要更新的
     */
    private VQuestionUserAnswerFollowVo source;

    /**
     * target -> 目标条件
     */
    private VQuestionUserAnswerFollowVo target;



    public VQuestionUserAnswerFollowVo getSource() {
        return source;
    }

    public void setSource(VQuestionUserAnswerFollowVo source) {
        this.source = source;
    }

    public VQuestionUserAnswerFollowVo getTarget() {
        return target;
    }

    public void setTarget(VQuestionUserAnswerFollowVo target) {
        this.target = target;
    }


    @Override
    public String toString() {
        return "VQuestionUserAnswerFollowRequestUpdateBase{" +
                "source=" + source +
                ", target=" + target +
                '}';
    }

}
