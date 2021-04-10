package demomaster.vo.request;

import demomaster.vo.TSystemParamVo;

/**
 * 这个是用于updateBase的request使用
 */
public class TSystemParamRequestUpdateBase {

    /**
     * source -> 需要更新的
     */
    private TSystemParamVo source;

    /**
     * target -> 目标条件
     */
    private TSystemParamVo target;



    public TSystemParamVo getSource() {
        return source;
    }

    public void setSource(TSystemParamVo source) {
        this.source = source;
    }

    public TSystemParamVo getTarget() {
        return target;
    }

    public void setTarget(TSystemParamVo target) {
        this.target = target;
    }


    @Override
    public String toString() {
        return "TSystemParamRequestUpdateBase{" +
                "source=" + source +
                ", target=" + target +
                '}';
    }

}
