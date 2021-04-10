package demomaster.vo.request;

import demomaster.vo.VQuestionUserVo;

/**
 * 这个是用于updateBase的request使用
 */
public class VQuestionUserRequestUpdateBase {

    /**
     * source -> 需要更新的
     */
    private VQuestionUserVo source;

    /**
     * target -> 目标条件
     */
    private VQuestionUserVo target;



    public VQuestionUserVo getSource() {
        return source;
    }

    public void setSource(VQuestionUserVo source) {
        this.source = source;
    }

    public VQuestionUserVo getTarget() {
        return target;
    }

    public void setTarget(VQuestionUserVo target) {
        this.target = target;
    }


    @Override
    public String toString() {
        return "VQuestionUserRequestUpdateBase{" +
                "source=" + source +
                ", target=" + target +
                '}';
    }

}
