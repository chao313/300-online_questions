package demomaster.vo.request;

import demomaster.vo.plugin.VReportQuestionQuestitionNoPriVo;
import demomaster.vo.plugin.VReportQuestionQuestitionPriVo;

/**
 * 这个是用于updateByKey的request使用
 */
public class VReportQuestionQuestitionRequestUpdatePrimaryKey {

    /**
     * source -> 需要更新的
     */
    private VReportQuestionQuestitionNoPriVo source;

    /**
     * target -> 目标条件
     */
    private VReportQuestionQuestitionPriVo target;



    public VReportQuestionQuestitionNoPriVo getSource() {
        return source;
    }

    public void setSource(VReportQuestionQuestitionNoPriVo source) {
        this.source = source;
    }

    public VReportQuestionQuestitionPriVo getTarget() {
        return target;
    }

    public void setTarget(VReportQuestionQuestitionPriVo target) {
        this.target = target;
    }


    @Override
    public String toString() {
        return "VReportQuestionQuestitionRequestUpdatePrimaryKey{" +
                "source=" + source +
                ", target=" + target +
                '}';
    }

}
