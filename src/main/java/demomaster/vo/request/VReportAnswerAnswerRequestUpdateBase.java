package demomaster.vo.request;

import demomaster.vo.VReportAnswerAnswerVo;

/**
 * 这个是用于updateBase的request使用
 */
public class VReportAnswerAnswerRequestUpdateBase {

    /**
     * source -> 需要更新的
     */
    private VReportAnswerAnswerVo source;

    /**
     * target -> 目标条件
     */
    private VReportAnswerAnswerVo target;



    public VReportAnswerAnswerVo getSource() {
        return source;
    }

    public void setSource(VReportAnswerAnswerVo source) {
        this.source = source;
    }

    public VReportAnswerAnswerVo getTarget() {
        return target;
    }

    public void setTarget(VReportAnswerAnswerVo target) {
        this.target = target;
    }


    @Override
    public String toString() {
        return "VReportAnswerAnswerRequestUpdateBase{" +
                "source=" + source +
                ", target=" + target +
                '}';
    }

}
