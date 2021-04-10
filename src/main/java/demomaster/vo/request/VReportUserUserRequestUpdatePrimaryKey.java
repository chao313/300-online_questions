package demomaster.vo.request;

import demomaster.vo.plugin.VReportUserUserNoPriVo;
import demomaster.vo.plugin.VReportUserUserPriVo;

/**
 * 这个是用于updateByKey的request使用
 */
public class VReportUserUserRequestUpdatePrimaryKey {

    /**
     * source -> 需要更新的
     */
    private VReportUserUserNoPriVo source;

    /**
     * target -> 目标条件
     */
    private VReportUserUserPriVo target;



    public VReportUserUserNoPriVo getSource() {
        return source;
    }

    public void setSource(VReportUserUserNoPriVo source) {
        this.source = source;
    }

    public VReportUserUserPriVo getTarget() {
        return target;
    }

    public void setTarget(VReportUserUserPriVo target) {
        this.target = target;
    }


    @Override
    public String toString() {
        return "VReportUserUserRequestUpdatePrimaryKey{" +
                "source=" + source +
                ", target=" + target +
                '}';
    }

}
