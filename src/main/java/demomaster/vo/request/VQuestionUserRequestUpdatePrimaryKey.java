package demomaster.vo.request;

import demomaster.vo.plugin.VQuestionUserNoPriVo;
import demomaster.vo.plugin.VQuestionUserPriVo;

/**
 * 这个是用于updateByKey的request使用
 */
public class VQuestionUserRequestUpdatePrimaryKey {

    /**
     * source -> 需要更新的
     */
    private VQuestionUserNoPriVo source;

    /**
     * target -> 目标条件
     */
    private VQuestionUserPriVo target;



    public VQuestionUserNoPriVo getSource() {
        return source;
    }

    public void setSource(VQuestionUserNoPriVo source) {
        this.source = source;
    }

    public VQuestionUserPriVo getTarget() {
        return target;
    }

    public void setTarget(VQuestionUserPriVo target) {
        this.target = target;
    }


    @Override
    public String toString() {
        return "VQuestionUserRequestUpdatePrimaryKey{" +
                "source=" + source +
                ", target=" + target +
                '}';
    }

}
