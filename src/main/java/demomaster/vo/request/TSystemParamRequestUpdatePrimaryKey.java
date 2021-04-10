package demomaster.vo.request;

import demomaster.vo.plugin.TSystemParamNoPriVo;
import demomaster.vo.plugin.TSystemParamPriVo;

/**
 * 这个是用于updateByKey的request使用
 */
public class TSystemParamRequestUpdatePrimaryKey {

    /**
     * source -> 需要更新的
     */
    private TSystemParamNoPriVo source;

    /**
     * target -> 目标条件
     */
    private TSystemParamPriVo target;



    public TSystemParamNoPriVo getSource() {
        return source;
    }

    public void setSource(TSystemParamNoPriVo source) {
        this.source = source;
    }

    public TSystemParamPriVo getTarget() {
        return target;
    }

    public void setTarget(TSystemParamPriVo target) {
        this.target = target;
    }


    @Override
    public String toString() {
        return "TSystemParamRequestUpdatePrimaryKey{" +
                "source=" + source +
                ", target=" + target +
                '}';
    }

}
