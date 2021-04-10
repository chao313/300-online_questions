package demomaster.vo.request;

import demomaster.vo.TFollowQuestionVo;

/**
 * 这个是用于updateBase的request使用
 */
public class TFollowQuestionRequestUpdateBase {

    /**
     * source -> 需要更新的
     */
    private TFollowQuestionVo source;

    /**
     * target -> 目标条件
     */
    private TFollowQuestionVo target;



    public TFollowQuestionVo getSource() {
        return source;
    }

    public void setSource(TFollowQuestionVo source) {
        this.source = source;
    }

    public TFollowQuestionVo getTarget() {
        return target;
    }

    public void setTarget(TFollowQuestionVo target) {
        this.target = target;
    }


    @Override
    public String toString() {
        return "TFollowQuestionRequestUpdateBase{" +
                "source=" + source +
                ", target=" + target +
                '}';
    }

}
