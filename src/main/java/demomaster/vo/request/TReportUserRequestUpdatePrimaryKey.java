package demomaster.vo.request;

import demomaster.vo.plugin.TReportUserNoPriVo;
import demomaster.vo.plugin.TReportUserPriVo;

/**
 * 这个是用于updateByKey的request使用
 */
public class TReportUserRequestUpdatePrimaryKey {

    /**
     * source -> 需要更新的
     */
    private TReportUserNoPriVo source;

    /**
     * target -> 目标条件
     */
    private TReportUserPriVo target;



    public TReportUserNoPriVo getSource() {
        return source;
    }

    public void setSource(TReportUserNoPriVo source) {
        this.source = source;
    }

    public TReportUserPriVo getTarget() {
        return target;
    }

    public void setTarget(TReportUserPriVo target) {
        this.target = target;
    }


    @Override
    public String toString() {
        return "TReportUserRequestUpdatePrimaryKey{" +
                "source=" + source +
                ", target=" + target +
                '}';
    }

}
