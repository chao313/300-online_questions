package demomaster.vo.request;

import demomaster.vo.TReportAnswerVo;

/**
 * 这个是用于updateBase的request使用
 */
public class TReportAnswerRequestUpdateBase {

    /**
     * source -> 需要更新的
     */
    private TReportAnswerVo source;

    /**
     * target -> 目标条件
     */
    private TReportAnswerVo target;



    public TReportAnswerVo getSource() {
        return source;
    }

    public void setSource(TReportAnswerVo source) {
        this.source = source;
    }

    public TReportAnswerVo getTarget() {
        return target;
    }

    public void setTarget(TReportAnswerVo target) {
        this.target = target;
    }


    @Override
    public String toString() {
        return "TReportAnswerRequestUpdateBase{" +
                "source=" + source +
                ", target=" + target +
                '}';
    }

}
