package demomaster.vo.request;

import demomaster.vo.VReportUserUserVo;

/**
 * 这个是用于updateBase的request使用
 */
public class VReportUserUserRequestUpdateBase {

    /**
     * source -> 需要更新的
     */
    private VReportUserUserVo source;

    /**
     * target -> 目标条件
     */
    private VReportUserUserVo target;



    public VReportUserUserVo getSource() {
        return source;
    }

    public void setSource(VReportUserUserVo source) {
        this.source = source;
    }

    public VReportUserUserVo getTarget() {
        return target;
    }

    public void setTarget(VReportUserUserVo target) {
        this.target = target;
    }


    @Override
    public String toString() {
        return "VReportUserUserRequestUpdateBase{" +
                "source=" + source +
                ", target=" + target +
                '}';
    }

}
