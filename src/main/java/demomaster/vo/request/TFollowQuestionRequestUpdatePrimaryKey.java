package demomaster.vo.request;

import demomaster.vo.plugin.TFollowQuestionNoPriVo;
import demomaster.vo.plugin.TFollowQuestionPriVo;

/**
 * 这个是用于updateByKey的request使用
 */
public class TFollowQuestionRequestUpdatePrimaryKey {

    /**
     * source -> 需要更新的
     */
    private TFollowQuestionNoPriVo source;

    /**
     * target -> 目标条件
     */
    private TFollowQuestionPriVo target;



    public TFollowQuestionNoPriVo getSource() {
        return source;
    }

    public void setSource(TFollowQuestionNoPriVo source) {
        this.source = source;
    }

    public TFollowQuestionPriVo getTarget() {
        return target;
    }

    public void setTarget(TFollowQuestionPriVo target) {
        this.target = target;
    }


    @Override
    public String toString() {
        return "TFollowQuestionRequestUpdatePrimaryKey{" +
                "source=" + source +
                ", target=" + target +
                '}';
    }

}
