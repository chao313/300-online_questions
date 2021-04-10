package demomaster.vo;


/**
 * 表名称      :t_answer_second
 * 表类型      :BASE TABLE
 * 表引擎      :InnoDB
 * 表版本      :10
 * 行格式      :Dynamic
 * 表创建      :2020-5-17
 * 字符集      :utf8_bin
 * 表注释      :回答时间
 */
public class TAnswerSecondVo {

    private String id;  // 回答的uuid 
    private String userName;  // 回答用户的Name 
    private String questionId;  // 问题的id 
    private String questionTitle;  // 问题的title 
    private byte[] content;  // 问题的内容 
    private Integer deleteFlag;  // 是否删除 
    private Integer status;  // 状态 
    private Integer blackFlag;  // 是否黑名单 
    private String time;  // 创建时间 
    private String answerId;  // 回答的问题id 


    public String getId() {

        return id;

    }

    public void setId(String id) {

        this.id = id;

    }

    public String getUserName() {

        return userName;

    }

    public void setUserName(String userName) {

        this.userName = userName;

    }

    public String getQuestionId() {

        return questionId;

    }

    public void setQuestionId(String questionId) {

        this.questionId = questionId;

    }

    public String getQuestionTitle() {

        return questionTitle;

    }

    public void setQuestionTitle(String questionTitle) {

        this.questionTitle = questionTitle;

    }

    public byte[] getContent() {

        return content;

    }

    public void setContent(byte[] content) {

        this.content = content;

    }

    public Integer getDeleteFlag() {

        return deleteFlag;

    }

    public void setDeleteFlag(Integer deleteFlag) {

        this.deleteFlag = deleteFlag;

    }

    public Integer getStatus() {

        return status;

    }

    public void setStatus(Integer status) {

        this.status = status;

    }

    public Integer getBlackFlag() {

        return blackFlag;

    }

    public void setBlackFlag(Integer blackFlag) {

        this.blackFlag = blackFlag;

    }

    public String getTime() {

        return time;

    }

    public void setTime(String time) {

        this.time = time;

    }

    public String getAnswerId() {

        return answerId;

    }

    public void setAnswerId(String answerId) {

        this.answerId = answerId;

    }


    @Override
    public String toString() {
        return "TAnswerSecondVo{" +
                ", id '" + id + '\'' +
                ", userName '" + userName + '\'' +
                ", questionId '" + questionId + '\'' +
                ", questionTitle '" + questionTitle + '\'' +
                ", content '" + content +
                ", deleteFlag '" + deleteFlag +
                ", status '" + status +
                ", blackFlag '" + blackFlag +
                ", time '" + time + '\'' +
                ", answerId '" + answerId + '\'' +
                '}';
    }

}
