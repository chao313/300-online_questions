package demomaster.vo.request;

import demomaster.vo.plugin.TReportQuestionNoPriVo;
import demomaster.vo.plugin.TReportQuestionPriVo;

/**
 * 这个是用于updateByKey的request使用
 */
public class TReportQuestionRequestUpdatePrimaryKey {

    /**
     * source -> 需要更新的
     */
    private TReportQuestionNoPriVo source;

    /**
     * target -> 目标条件
     */
    private TReportQuestionPriVo target;



    public TReportQuestionNoPriVo getSource() {
        return source;
    }

    public void setSource(TReportQuestionNoPriVo source) {
        this.source = source;
    }

    public TReportQuestionPriVo getTarget() {
        return target;
    }

    public void setTarget(TReportQuestionPriVo target) {
        this.target = target;
    }


    @Override
    public String toString() {
        return "TReportQuestionRequestUpdatePrimaryKey{" +
                "source=" + source +
                ", target=" + target +
                '}';
    }

}
