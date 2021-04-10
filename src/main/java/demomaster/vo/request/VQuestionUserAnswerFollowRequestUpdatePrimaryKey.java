package demomaster.vo.request;

import demomaster.vo.plugin.VQuestionUserAnswerFollowNoPriVo;
import demomaster.vo.plugin.VQuestionUserAnswerFollowPriVo;

/**
 * 这个是用于updateByKey的request使用
 */
public class VQuestionUserAnswerFollowRequestUpdatePrimaryKey {

    /**
     * source -> 需要更新的
     */
    private VQuestionUserAnswerFollowNoPriVo source;

    /**
     * target -> 目标条件
     */
    private VQuestionUserAnswerFollowPriVo target;



    public VQuestionUserAnswerFollowNoPriVo getSource() {
        return source;
    }

    public void setSource(VQuestionUserAnswerFollowNoPriVo source) {
        this.source = source;
    }

    public VQuestionUserAnswerFollowPriVo getTarget() {
        return target;
    }

    public void setTarget(VQuestionUserAnswerFollowPriVo target) {
        this.target = target;
    }


    @Override
    public String toString() {
        return "VQuestionUserAnswerFollowRequestUpdatePrimaryKey{" +
                "source=" + source +
                ", target=" + target +
                '}';
    }

}
