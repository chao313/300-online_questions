package demomaster.vo;


/**
 * 表名称      :t_follow_question
 * 表类型      :BASE TABLE
 * 表引擎      :InnoDB
 * 表版本      :10
 * 行格式      :Dynamic
 * 表创建      :2020-5-16
 * 字符集      :utf8_bin
 * 表注释      :问题关注
 */
public class TFollowQuestionVo {

    private String questionId;  // 问题的id 
    private String userName;  // 关注的人 
    private String cteateTime; 


    public String getQuestionId() {

        return questionId;

    }

    public void setQuestionId(String questionId) {

        this.questionId = questionId;

    }

    public String getUserName() {

        return userName;

    }

    public void setUserName(String userName) {

        this.userName = userName;

    }

    public String getCteateTime() {

        return cteateTime;

    }

    public void setCteateTime(String cteateTime) {

        this.cteateTime = cteateTime;

    }


    @Override
    public String toString() {
        return "TFollowQuestionVo{" +
                ", questionId '" + questionId + '\'' +
                ", userName '" + userName + '\'' +
                ", cteateTime '" + cteateTime + '\'' +
                '}';
    }

}
