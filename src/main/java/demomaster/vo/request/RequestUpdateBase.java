package demomaster.vo.request;

import demomaster.vo.Vo;

/**
 * 这个是用于updateBase的request使用
 */
public class RequestUpdateBase {

    /**
     * source -> 需要更新的
     */
    private Vo source;

    /**
     * target -> 目标条件
     */
    private Vo target;



    public Vo getSource() {
        return source;
    }

    public void setSource(Vo source) {
        this.source = source;
    }

    public Vo getTarget() {
        return target;
    }

    public void setTarget(Vo target) {
        this.target = target;
    }


    @Override
    public String toString() {
        return "RequestUpdateBase{" +
                "source=" + source +
                ", target=" + target +
                '}';
    }

}
