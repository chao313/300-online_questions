package demomaster.vo.request;

import demomaster.vo.VAnswerSecondUserVo;

/**
 * 这个是用于updateBase的request使用
 */
public class VAnswerSecondUserRequestUpdateBase {

    /**
     * source -> 需要更新的
     */
    private VAnswerSecondUserVo source;

    /**
     * target -> 目标条件
     */
    private VAnswerSecondUserVo target;



    public VAnswerSecondUserVo getSource() {
        return source;
    }

    public void setSource(VAnswerSecondUserVo source) {
        this.source = source;
    }

    public VAnswerSecondUserVo getTarget() {
        return target;
    }

    public void setTarget(VAnswerSecondUserVo target) {
        this.target = target;
    }


    @Override
    public String toString() {
        return "VAnswerSecondUserRequestUpdateBase{" +
                "source=" + source +
                ", target=" + target +
                '}';
    }

}
