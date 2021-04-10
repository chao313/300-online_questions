package demomaster.vo.request;

import demomaster.vo.TReportUserVo;

/**
 * 这个是用于updateBase的request使用
 */
public class TReportUserRequestUpdateBase {

    /**
     * source -> 需要更新的
     */
    private TReportUserVo source;

    /**
     * target -> 目标条件
     */
    private TReportUserVo target;



    public TReportUserVo getSource() {
        return source;
    }

    public void setSource(TReportUserVo source) {
        this.source = source;
    }

    public TReportUserVo getTarget() {
        return target;
    }

    public void setTarget(TReportUserVo target) {
        this.target = target;
    }


    @Override
    public String toString() {
        return "TReportUserRequestUpdateBase{" +
                "source=" + source +
                ", target=" + target +
                '}';
    }

}
