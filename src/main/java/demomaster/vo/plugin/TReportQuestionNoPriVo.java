package demomaster.vo.plugin;


/**
 * 这里属性是非主键字段
 *
 * 表名称      :t_report_question
 * 表类型      :BASE TABLE
 * 表引擎      :InnoDB
 * 表版本      :10
 * 行格式      :Dynamic
 * 表创建      :2020-5-17
 * 字符集      :utf8_bin
 * 表注释      :问题举报
 */
public class TReportQuestionNoPriVo {

    private String questionId;  // 举报问题id 
    private String questionName;  // 举报问题名称 
    private String reason;  // 举报理由 


    public String getQuestionId() {

        return questionId;

    }

    public void setQuestionId(String questionId) {

        this.questionId = questionId;

    }
    public String getQuestionName() {

        return questionName;

    }

    public void setQuestionName(String questionName) {

        this.questionName = questionName;

    }
    public String getReason() {

        return reason;

    }

    public void setReason(String reason) {

        this.reason = reason;

    }

    @Override
    public String toString() {
        return "TReportQuestionNoPriVo{" +
                ", questionId '" + questionId + '\'' +
                ", questionName '" + questionName + '\'' +
                ", reason '" + reason + '\'' +
                '}';
    }

}
