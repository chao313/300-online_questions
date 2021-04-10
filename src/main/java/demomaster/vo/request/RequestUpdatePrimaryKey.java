package demomaster.vo.request;

import demomaster.vo.plugin.NoPriVo;
import demomaster.vo.plugin.PriVo;

/**
 * 这个是用于updateByKey的request使用
 */
public class RequestUpdatePrimaryKey {

    /**
     * source -> 需要更新的
     */
    private NoPriVo source;

    /**
     * target -> 目标条件
     */
    private PriVo target;



    public NoPriVo getSource() {
        return source;
    }

    public void setSource(NoPriVo source) {
        this.source = source;
    }

    public PriVo getTarget() {
        return target;
    }

    public void setTarget(PriVo target) {
        this.target = target;
    }


    @Override
    public String toString() {
        return "RequestUpdatePrimaryKey{" +
                "source=" + source +
                ", target=" + target +
                '}';
    }

}
