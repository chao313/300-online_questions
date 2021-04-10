package demomaster.vo.plugin;


/**
 * 这里属性是非主键字段
 *
 * 表名称      :t_report_answer
 * 表类型      :BASE TABLE
 * 表引擎      :InnoDB
 * 表版本      :10
 * 行格式      :Dynamic
 * 表创建      :2020-5-17
 * 字符集      :utf8_bin
 * 表注释      :回复举报
 */
public class TReportAnswerNoPriVo {

    private String answerId;  // 举报answer 
    private String reason;  // 举报理由 


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

    @Override
    public String toString() {
        return "TReportAnswerNoPriVo{" +
                ", answerId '" + answerId + '\'' +
                ", reason '" + reason + '\'' +
                '}';
    }

}
