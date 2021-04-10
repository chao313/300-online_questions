package demomaster.vo.request;

import demomaster.vo.TAnswerSecondVo;

/**
 * 这个是用于updateBase的request使用
 */
public class TAnswerSecondRequestUpdateBase {

    /**
     * source -> 需要更新的
     */
    private TAnswerSecondVo source;

    /**
     * target -> 目标条件
     */
    private TAnswerSecondVo target;



    public TAnswerSecondVo getSource() {
        return source;
    }

    public void setSource(TAnswerSecondVo source) {
        this.source = source;
    }

    public TAnswerSecondVo getTarget() {
        return target;
    }

    public void setTarget(TAnswerSecondVo target) {
        this.target = target;
    }


    @Override
    public String toString() {
        return "TAnswerSecondRequestUpdateBase{" +
                "source=" + source +
                ", target=" + target +
                '}';
    }

}
