package demomaster.vo.request;

import demomaster.vo.plugin.TAnswerSecondNoPriVo;
import demomaster.vo.plugin.TAnswerSecondPriVo;

/**
 * 这个是用于updateByKey的request使用
 */
public class TAnswerSecondRequestUpdatePrimaryKey {

    /**
     * source -> 需要更新的
     */
    private TAnswerSecondNoPriVo source;

    /**
     * target -> 目标条件
     */
    private TAnswerSecondPriVo target;



    public TAnswerSecondNoPriVo getSource() {
        return source;
    }

    public void setSource(TAnswerSecondNoPriVo source) {
        this.source = source;
    }

    public TAnswerSecondPriVo getTarget() {
        return target;
    }

    public void setTarget(TAnswerSecondPriVo target) {
        this.target = target;
    }


    @Override
    public String toString() {
        return "TAnswerSecondRequestUpdatePrimaryKey{" +
                "source=" + source +
                ", target=" + target +
                '}';
    }

}
