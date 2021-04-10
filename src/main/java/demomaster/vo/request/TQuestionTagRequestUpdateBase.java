package demomaster.vo.request;

import demomaster.vo.TQuestionTagVo;

/**
 * 这个是用于updateBase的request使用
 */
public class TQuestionTagRequestUpdateBase {

    /**
     * source -> 需要更新的
     */
    private TQuestionTagVo source;

    /**
     * target -> 目标条件
     */
    private TQuestionTagVo target;



    public TQuestionTagVo getSource() {
        return source;
    }

    public void setSource(TQuestionTagVo source) {
        this.source = source;
    }

    public TQuestionTagVo getTarget() {
        return target;
    }

    public void setTarget(TQuestionTagVo target) {
        this.target = target;
    }


    @Override
    public String toString() {
        return "TQuestionTagRequestUpdateBase{" +
                "source=" + source +
                ", target=" + target +
                '}';
    }

}
