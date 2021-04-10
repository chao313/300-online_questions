package demomaster.vo.request;

import demomaster.vo.TTagVo;

/**
 * 这个是用于updateBase的request使用
 */
public class TTagRequestUpdateBase {

    /**
     * source -> 需要更新的
     */
    private TTagVo source;

    /**
     * target -> 目标条件
     */
    private TTagVo target;



    public TTagVo getSource() {
        return source;
    }

    public void setSource(TTagVo source) {
        this.source = source;
    }

    public TTagVo getTarget() {
        return target;
    }

    public void setTarget(TTagVo target) {
        this.target = target;
    }


    @Override
    public String toString() {
        return "TTagRequestUpdateBase{" +
                "source=" + source +
                ", target=" + target +
                '}';
    }

}
