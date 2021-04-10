package demomaster.vo.request;

import demomaster.vo.TQuestionsVo;

/**
 * 这个是用于updateBase的request使用
 */
public class TQuestionsRequestUpdateBase {

    /**
     * source -> 需要更新的
     */
    private TQuestionsVo source;

    /**
     * target -> 目标条件
     */
    private TQuestionsVo target;



    public TQuestionsVo getSource() {
        return source;
    }

    public void setSource(TQuestionsVo source) {
        this.source = source;
    }

    public TQuestionsVo getTarget() {
        return target;
    }

    public void setTarget(TQuestionsVo target) {
        this.target = target;
    }


    @Override
    public String toString() {
        return "TQuestionsRequestUpdateBase{" +
                "source=" + source +
                ", target=" + target +
                '}';
    }

}
