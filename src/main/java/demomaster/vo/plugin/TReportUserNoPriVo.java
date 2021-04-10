package demomaster.vo.plugin;


/**
 * 这里属性是非主键字段
 *
 * 表名称      :t_report_user
 * 表类型      :BASE TABLE
 * 表引擎      :InnoDB
 * 表版本      :10
 * 行格式      :Dynamic
 * 表创建      :2020-5-17
 * 字符集      :utf8_bin
 * 表注释      :用户举报
 */
public class TReportUserNoPriVo {

    private String userName;  // 举报用户名称 
    private String reason;  // 举报理由 


    public String getUserName() {

        return userName;

    }

    public void setUserName(String userName) {

        this.userName = userName;

    }
    public String getReason() {

        return reason;

    }

    public void setReason(String reason) {

        this.reason = reason;

    }

    @Override
    public String toString() {
        return "TReportUserNoPriVo{" +
                ", userName '" + userName + '\'' +
                ", reason '" + reason + '\'' +
                '}';
    }

}
