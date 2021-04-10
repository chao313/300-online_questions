package demomaster.vo.request;

import demomaster.vo.plugin.VAnswerUserNoPriVo;
import demomaster.vo.plugin.VAnswerUserPriVo;

/**
 * 这个是用于updateByKey的request使用
 */
public class VAnswerUserRequestUpdatePrimaryKey {

    /**
     * source -> 需要更新的
     */
    private VAnswerUserNoPriVo source;

    /**
     * target -> 目标条件
     */
    private VAnswerUserPriVo target;



    public VAnswerUserNoPriVo getSource() {
        return source;
    }

    public void setSource(VAnswerUserNoPriVo source) {
        this.source = source;
    }

    public VAnswerUserPriVo getTarget() {
        return target;
    }

    public void setTarget(VAnswerUserPriVo target) {
        this.target = target;
    }


    @Override
    public String toString() {
        return "VAnswerUserRequestUpdatePrimaryKey{" +
                "source=" + source +
                ", target=" + target +
                '}';
    }

}
