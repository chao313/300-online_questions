package demomaster.vo.plugin;


/**
 * 这里属性是非主键字段
 *
 * 表名称      :t_follow_question
 * 表类型      :BASE TABLE
 * 表引擎      :InnoDB
 * 表版本      :10
 * 行格式      :Dynamic
 * 表创建      :2020-5-16
 * 字符集      :utf8_bin
 * 表注释      :问题关注
 */
public class TFollowQuestionNoPriVo {

    private String cteateTime; 


    public String getCteateTime() {

        return cteateTime;

    }

    public void setCteateTime(String cteateTime) {

        this.cteateTime = cteateTime;

    }

    @Override
    public String toString() {
        return "TFollowQuestionNoPriVo{" +
                ", cteateTime '" + cteateTime + '\'' +
                '}';
    }

}
