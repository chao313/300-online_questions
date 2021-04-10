package demomaster.vo.request;

import demomaster.vo.plugin.TQuestionTagNoPriVo;
import demomaster.vo.plugin.TQuestionTagPriVo;

/**
 * 这个是用于updateByKey的request使用
 */
public class TQuestionTagRequestUpdatePrimaryKey {

    /**
     * source -> 需要更新的
     */
    private TQuestionTagNoPriVo source;

    /**
     * target -> 目标条件
     */
    private TQuestionTagPriVo target;



    public TQuestionTagNoPriVo getSource() {
        return source;
    }

    public void setSource(TQuestionTagNoPriVo source) {
        this.source = source;
    }

    public TQuestionTagPriVo getTarget() {
        return target;
    }

    public void setTarget(TQuestionTagPriVo target) {
        this.target = target;
    }


    @Override
    public String toString() {
        return "TQuestionTagRequestUpdatePrimaryKey{" +
                "source=" + source +
                ", target=" + target +
                '}';
    }

}
