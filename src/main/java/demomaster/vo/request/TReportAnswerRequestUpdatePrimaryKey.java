package demomaster.vo.request;

import demomaster.vo.plugin.TReportAnswerNoPriVo;
import demomaster.vo.plugin.TReportAnswerPriVo;

/**
 * 这个是用于updateByKey的request使用
 */
public class TReportAnswerRequestUpdatePrimaryKey {

    /**
     * source -> 需要更新的
     */
    private TReportAnswerNoPriVo source;

    /**
     * target -> 目标条件
     */
    private TReportAnswerPriVo target;



    public TReportAnswerNoPriVo getSource() {
        return source;
    }

    public void setSource(TReportAnswerNoPriVo source) {
        this.source = source;
    }

    public TReportAnswerPriVo getTarget() {
        return target;
    }

    public void setTarget(TReportAnswerPriVo target) {
        this.target = target;
    }


    @Override
    public String toString() {
        return "TReportAnswerRequestUpdatePrimaryKey{" +
                "source=" + source +
                ", target=" + target +
                '}';
    }

}
