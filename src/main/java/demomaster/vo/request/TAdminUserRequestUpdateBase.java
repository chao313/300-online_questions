package demomaster.vo.request;

import demomaster.vo.TAdminUserVo;

/**
 * 这个是用于updateBase的request使用
 */
public class TAdminUserRequestUpdateBase {

    /**
     * source -> 需要更新的
     */
    private TAdminUserVo source;

    /**
     * target -> 目标条件
     */
    private TAdminUserVo target;



    public TAdminUserVo getSource() {
        return source;
    }

    public void setSource(TAdminUserVo source) {
        this.source = source;
    }

    public TAdminUserVo getTarget() {
        return target;
    }

    public void setTarget(TAdminUserVo target) {
        this.target = target;
    }


    @Override
    public String toString() {
        return "TAdminUserRequestUpdateBase{" +
                "source=" + source +
                ", target=" + target +
                '}';
    }

}
