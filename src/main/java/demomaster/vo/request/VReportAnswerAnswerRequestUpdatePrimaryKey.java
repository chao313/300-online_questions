package demomaster.vo.request;

import demomaster.vo.plugin.VReportAnswerAnswerNoPriVo;
import demomaster.vo.plugin.VReportAnswerAnswerPriVo;

/**
 * 这个是用于updateByKey的request使用
 */
public class VReportAnswerAnswerRequestUpdatePrimaryKey {

    /**
     * source -> 需要更新的
     */
    private VReportAnswerAnswerNoPriVo source;

    /**
     * target -> 目标条件
     */
    private VReportAnswerAnswerPriVo target;



    public VReportAnswerAnswerNoPriVo getSource() {
        return source;
    }

    public void setSource(VReportAnswerAnswerNoPriVo source) {
        this.source = source;
    }

    public VReportAnswerAnswerPriVo getTarget() {
        return target;
    }

    public void setTarget(VReportAnswerAnswerPriVo target) {
        this.target = target;
    }


    @Override
    public String toString() {
        return "VReportAnswerAnswerRequestUpdatePrimaryKey{" +
                "source=" + source +
                ", target=" + target +
                '}';
    }

}
