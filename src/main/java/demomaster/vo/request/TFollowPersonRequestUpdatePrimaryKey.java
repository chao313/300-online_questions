package demomaster.vo.request;

import demomaster.vo.plugin.TFollowPersonNoPriVo;
import demomaster.vo.plugin.TFollowPersonPriVo;

/**
 * 这个是用于updateByKey的request使用
 */
public class TFollowPersonRequestUpdatePrimaryKey {

    /**
     * source -> 需要更新的
     */
    private TFollowPersonNoPriVo source;

    /**
     * target -> 目标条件
     */
    private TFollowPersonPriVo target;



    public TFollowPersonNoPriVo getSource() {
        return source;
    }

    public void setSource(TFollowPersonNoPriVo source) {
        this.source = source;
    }

    public TFollowPersonPriVo getTarget() {
        return target;
    }

    public void setTarget(TFollowPersonPriVo target) {
        this.target = target;
    }


    @Override
    public String toString() {
        return "TFollowPersonRequestUpdatePrimaryKey{" +
                "source=" + source +
                ", target=" + target +
                '}';
    }

}
