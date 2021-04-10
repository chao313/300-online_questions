package demomaster.vo.request;

import demomaster.vo.plugin.VAnswerSecondUserNoPriVo;
import demomaster.vo.plugin.VAnswerSecondUserPriVo;

/**
 * 这个是用于updateByKey的request使用
 */
public class VAnswerSecondUserRequestUpdatePrimaryKey {

    /**
     * source -> 需要更新的
     */
    private VAnswerSecondUserNoPriVo source;

    /**
     * target -> 目标条件
     */
    private VAnswerSecondUserPriVo target;



    public VAnswerSecondUserNoPriVo getSource() {
        return source;
    }

    public void setSource(VAnswerSecondUserNoPriVo source) {
        this.source = source;
    }

    public VAnswerSecondUserPriVo getTarget() {
        return target;
    }

    public void setTarget(VAnswerSecondUserPriVo target) {
        this.target = target;
    }


    @Override
    public String toString() {
        return "VAnswerSecondUserRequestUpdatePrimaryKey{" +
                "source=" + source +
                ", target=" + target +
                '}';
    }

}
