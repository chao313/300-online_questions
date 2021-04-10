package demomaster.vo.request;

import demomaster.vo.plugin.TAnswerNoPriVo;
import demomaster.vo.plugin.TAnswerPriVo;

/**
 * 这个是用于updateByKey的request使用
 */
public class TAnswerRequestUpdatePrimaryKey {

    /**
     * source -> 需要更新的
     */
    private TAnswerNoPriVo source;

    /**
     * target -> 目标条件
     */
    private TAnswerPriVo target;



    public TAnswerNoPriVo getSource() {
        return source;
    }

    public void setSource(TAnswerNoPriVo source) {
        this.source = source;
    }

    public TAnswerPriVo getTarget() {
        return target;
    }

    public void setTarget(TAnswerPriVo target) {
        this.target = target;
    }


    @Override
    public String toString() {
        return "TAnswerRequestUpdatePrimaryKey{" +
                "source=" + source +
                ", target=" + target +
                '}';
    }

}
