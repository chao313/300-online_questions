package demomaster.vo.request;

import demomaster.vo.plugin.TTagNoPriVo;
import demomaster.vo.plugin.TTagPriVo;

/**
 * 这个是用于updateByKey的request使用
 */
public class TTagRequestUpdatePrimaryKey {

    /**
     * source -> 需要更新的
     */
    private TTagNoPriVo source;

    /**
     * target -> 目标条件
     */
    private TTagPriVo target;



    public TTagNoPriVo getSource() {
        return source;
    }

    public void setSource(TTagNoPriVo source) {
        this.source = source;
    }

    public TTagPriVo getTarget() {
        return target;
    }

    public void setTarget(TTagPriVo target) {
        this.target = target;
    }


    @Override
    public String toString() {
        return "TTagRequestUpdatePrimaryKey{" +
                "source=" + source +
                ", target=" + target +
                '}';
    }

}
