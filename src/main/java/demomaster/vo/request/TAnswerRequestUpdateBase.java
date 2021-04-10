package demomaster.vo.request;

import demomaster.vo.TAnswerVo;

/**
 * 这个是用于updateBase的request使用
 */
public class TAnswerRequestUpdateBase {

    /**
     * source -> 需要更新的
     */
    private TAnswerVo source;

    /**
     * target -> 目标条件
     */
    private TAnswerVo target;



    public TAnswerVo getSource() {
        return source;
    }

    public void setSource(TAnswerVo source) {
        this.source = source;
    }

    public TAnswerVo getTarget() {
        return target;
    }

    public void setTarget(TAnswerVo target) {
        this.target = target;
    }


    @Override
    public String toString() {
        return "TAnswerRequestUpdateBase{" +
                "source=" + source +
                ", target=" + target +
                '}';
    }

}
