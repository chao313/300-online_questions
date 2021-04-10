package demomaster.vo.plugin;


/**
 * 这里属性是非主键字段
 *
 * 表名称      :v_report_user_user
 * 表类型      :VIEW
 * 表引擎      :
 * 表版本      :0
 * 行格式      :
 * 表创建      :
 * 字符集      :
 * 表注释      :VIEW
 */
public class VReportUserUserNoPriVo {

    private String id; 
    private String userName;  // 举报用户名称 
    private String reason;  // 举报理由 
    private String name;  // 用户姓名 
    private String createTime;  // 创建时间（申请时间） 
    private String updateTime; 
    private Integer deleteFlag;  // 删除标志: 0未删除，1已删除 
    private Integer approveStatus;  // 0: 待审批 1：通过 ：2 拒绝 
    private Integer blackListUser;  // 是否是黑名单 1 -> 是 0 -> 不是 
    private String logo;  // 用户头像 
    private Integer pvCount;  // 用户主页的浏览量 
    private Integer status;  // 0-未启用 1-启用 
    private String email;  // 邮箱 
    private String phone;  // 手机号码 


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
    public String getReason() {

        return reason;

    }

    public void setReason(String reason) {

        this.reason = reason;

    }
    public String getName() {

        return name;

    }

    public void setName(String name) {

        this.name = name;

    }
    public String getCreateTime() {

        return createTime;

    }

    public void setCreateTime(String createTime) {

        this.createTime = createTime;

    }
    public String getUpdateTime() {

        return updateTime;

    }

    public void setUpdateTime(String updateTime) {

        this.updateTime = updateTime;

    }
    public Integer getDeleteFlag() {

        return deleteFlag;

    }

    public void setDeleteFlag(Integer deleteFlag) {

        this.deleteFlag = deleteFlag;

    }
    public Integer getApproveStatus() {

        return approveStatus;

    }

    public void setApproveStatus(Integer approveStatus) {

        this.approveStatus = approveStatus;

    }
    public Integer getBlackListUser() {

        return blackListUser;

    }

    public void setBlackListUser(Integer blackListUser) {

        this.blackListUser = blackListUser;

    }
    public String getLogo() {

        return logo;

    }

    public void setLogo(String logo) {

        this.logo = logo;

    }
    public Integer getPvCount() {

        return pvCount;

    }

    public void setPvCount(Integer pvCount) {

        this.pvCount = pvCount;

    }
    public Integer getStatus() {

        return status;

    }

    public void setStatus(Integer status) {

        this.status = status;

    }
    public String getEmail() {

        return email;

    }

    public void setEmail(String email) {

        this.email = email;

    }
    public String getPhone() {

        return phone;

    }

    public void setPhone(String phone) {

        this.phone = phone;

    }

    @Override
    public String toString() {
        return "VReportUserUserNoPriVo{" +
                ", id '" + id + '\'' +
                ", userName '" + userName + '\'' +
                ", reason '" + reason + '\'' +
                ", name '" + name + '\'' +
                ", createTime '" + createTime + '\'' +
                ", updateTime '" + updateTime + '\'' +
                ", deleteFlag '" + deleteFlag +
                ", approveStatus '" + approveStatus +
                ", blackListUser '" + blackListUser +
                ", logo '" + logo + '\'' +
                ", pvCount '" + pvCount +
                ", status '" + status +
                ", email '" + email + '\'' +
                ", phone '" + phone + '\'' +
                '}';
    }

}
