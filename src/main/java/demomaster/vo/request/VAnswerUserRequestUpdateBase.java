package demomaster.vo.request;

import demomaster.vo.VAnswerUserVo;

/**
 * 这个是用于updateBase的request使用
 */
public class VAnswerUserRequestUpdateBase {

    /**
     * source -> 需要更新的
     */
    private VAnswerUserVo source;

    /**
     * target -> 目标条件
     */
    private VAnswerUserVo target;



    public VAnswerUserVo getSource() {
        return source;
    }

    public void setSource(VAnswerUserVo source) {
        this.source = source;
    }

    public VAnswerUserVo getTarget() {
        return target;
    }

    public void setTarget(VAnswerUserVo target) {
        this.target = target;
    }


    @Override
    public String toString() {
        return "VAnswerUserRequestUpdateBase{" +
                "source=" + source +
                ", target=" + target +
                '}';
    }

}
