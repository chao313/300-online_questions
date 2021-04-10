package demomaster.vo.plugin;


/**
 * 这里属性是非主键字段
 *
 * 表名称      :v_report_answer_answer
 * 表类型      :VIEW
 * 表引擎      :
 * 表版本      :0
 * 行格式      :
 * 表创建      :
 * 字符集      :
 * 表注释      :VIEW
 */
public class VReportAnswerAnswerNoPriVo {

    private String id; 
    private String answerId;  // 举报answer 
    private String reason;  // 举报理由 
    private String id0;  // 回答的uuid 
    private String userName;  // 回答用户的Name 
    private String questionId;  // 问题的id 
    private String questionTitle;  // 问题的title 
    private byte[] content;  // 问题的内容 
    private Integer deleteFlag;  // 是否删除 
    private Integer status;  // 状态 
    private Integer blackFlag;  // 是否黑名单 
    private String time;  // 创建时间 
    private String answerId0;  // 回答的问题id 


    public String getId() {

        return id;

    }

    public void setId(String id) {

        this.id = id;

    }
    public String getAnswerId() {

        return answerId;

    }

    public void setAnswerId(String answerId) {

        this.answerId = answerId;

    }
    public String getReason() {

        return reason;

    }

    public void setReason(String reason) {

        this.reason = reason;

    }
    public String getId0() {

        return id0;

    }

    public void setId0(String id0) {

        this.id0 = id0;

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
    public String getAnswerId0() {

        return answerId0;

    }

    public void setAnswerId0(String answerId0) {

        this.answerId0 = answerId0;

    }

    @Override
    public String toString() {
        return "VReportAnswerAnswerNoPriVo{" +
                ", id '" + id + '\'' +
                ", answerId '" + answerId + '\'' +
                ", reason '" + reason + '\'' +
                ", id0 '" + id0 + '\'' +
                ", userName '" + userName + '\'' +
                ", questionId '" + questionId + '\'' +
                ", questionTitle '" + questionTitle + '\'' +
                ", content '" + content +
                ", deleteFlag '" + deleteFlag +
                ", status '" + status +
                ", blackFlag '" + blackFlag +
                ", time '" + time + '\'' +
                ", answerId0 '" + answerId0 + '\'' +
                '}';
    }

}
