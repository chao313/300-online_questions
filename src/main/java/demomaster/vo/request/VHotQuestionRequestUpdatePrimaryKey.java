package demomaster.vo.request;

import demomaster.vo.plugin.VHotQuestionNoPriVo;
import demomaster.vo.plugin.VHotQuestionPriVo;

/**
 * 这个是用于updateByKey的request使用
 */
public class VHotQuestionRequestUpdatePrimaryKey {

    /**
     * source -> 需要更新的
     */
    private VHotQuestionNoPriVo source;

    /**
     * target -> 目标条件
     */
    private VHotQuestionPriVo target;



    public VHotQuestionNoPriVo getSource() {
        return source;
    }

    public void setSource(VHotQuestionNoPriVo source) {
        this.source = source;
    }

    public VHotQuestionPriVo getTarget() {
        return target;
    }

    public void setTarget(VHotQuestionPriVo target) {
        this.target = target;
    }


    @Override
    public String toString() {
        return "VHotQuestionRequestUpdatePrimaryKey{" +
                "source=" + source +
                ", target=" + target +
                '}';
    }

}
