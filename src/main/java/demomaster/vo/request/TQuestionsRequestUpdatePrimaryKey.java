package demomaster.vo.request;

import demomaster.vo.plugin.TQuestionsNoPriVo;
import demomaster.vo.plugin.TQuestionsPriVo;

/**
 * 这个是用于updateByKey的request使用
 */
public class TQuestionsRequestUpdatePrimaryKey {

    /**
     * source -> 需要更新的
     */
    private TQuestionsNoPriVo source;

    /**
     * target -> 目标条件
     */
    private TQuestionsPriVo target;



    public TQuestionsNoPriVo getSource() {
        return source;
    }

    public void setSource(TQuestionsNoPriVo source) {
        this.source = source;
    }

    public TQuestionsPriVo getTarget() {
        return target;
    }

    public void setTarget(TQuestionsPriVo target) {
        this.target = target;
    }


    @Override
    public String toString() {
        return "TQuestionsRequestUpdatePrimaryKey{" +
                "source=" + source +
                ", target=" + target +
                '}';
    }

}
