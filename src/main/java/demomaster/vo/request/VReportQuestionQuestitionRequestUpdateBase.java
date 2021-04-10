package demomaster.vo.request;

import demomaster.vo.VReportQuestionQuestitionVo;

/**
 * 这个是用于updateBase的request使用
 */
public class VReportQuestionQuestitionRequestUpdateBase {

    /**
     * source -> 需要更新的
     */
    private VReportQuestionQuestitionVo source;

    /**
     * target -> 目标条件
     */
    private VReportQuestionQuestitionVo target;



    public VReportQuestionQuestitionVo getSource() {
        return source;
    }

    public void setSource(VReportQuestionQuestitionVo source) {
        this.source = source;
    }

    public VReportQuestionQuestitionVo getTarget() {
        return target;
    }

    public void setTarget(VReportQuestionQuestitionVo target) {
        this.target = target;
    }


    @Override
    public String toString() {
        return "VReportQuestionQuestitionRequestUpdateBase{" +
                "source=" + source +
                ", target=" + target +
                '}';
    }

}
