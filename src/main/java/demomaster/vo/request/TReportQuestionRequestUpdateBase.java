package demomaster.vo.request;

import demomaster.vo.TReportQuestionVo;

/**
 * 这个是用于updateBase的request使用
 */
public class TReportQuestionRequestUpdateBase {

    /**
     * source -> 需要更新的
     */
    private TReportQuestionVo source;

    /**
     * target -> 目标条件
     */
    private TReportQuestionVo target;



    public TReportQuestionVo getSource() {
        return source;
    }

    public void setSource(TReportQuestionVo source) {
        this.source = source;
    }

    public TReportQuestionVo getTarget() {
        return target;
    }

    public void setTarget(TReportQuestionVo target) {
        this.target = target;
    }


    @Override
    public String toString() {
        return "TReportQuestionRequestUpdateBase{" +
                "source=" + source +
                ", target=" + target +
                '}';
    }

}
