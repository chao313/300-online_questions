package demomaster.vo;


/**
 * 表名称      :t_user
 * 表类型      :BASE TABLE
 * 表引擎      :InnoDB
 * 表版本      :10
 * 行格式      :Dynamic
 * 表创建      :2020-5-17
 * 字符集      :utf8_general_ci
 * 表注释      :
 */
public class TUserVo {

    private String id;  // 用户登录ID 
    private String name;  // 用户姓名 
    private String password;  // 密码 
    private String salt;  // 盐 
    private String phone;  // 手机号码 
    private String email;  // 邮箱 
    private Integer status;  // 0-未启用 1-启用 
    private String createTime;  // 创建时间（申请时间） 
    private String updateTime; 
    private Integer deleteFlag;  // 删除标志: 0未删除，1已删除 
    private Integer approveStatus;  // 0: 待审批 1：通过 ：2 拒绝 
    private Integer blackListUser;  // 是否是黑名单 1 -> 是 0 -> 不是 
    private String logo;  // 用户头像 
    private Integer pvCount;  // 用户主页的浏览量 
    private String signature;  // 个性签名 


    public String getId() {

        return id;

    }

    public void setId(String id) {

        this.id = id;

    }

    public String getName() {

        return name;

    }

    public void setName(String name) {

        this.name = name;

    }

    public String getPassword() {

        return password;

    }

    public void setPassword(String password) {

        this.password = password;

    }

    public String getSalt() {

        return salt;

    }

    public void setSalt(String salt) {

        this.salt = salt;

    }

    public String getPhone() {

        return phone;

    }

    public void setPhone(String phone) {

        this.phone = phone;

    }

    public String getEmail() {

        return email;

    }

    public void setEmail(String email) {

        this.email = email;

    }

    public Integer getStatus() {

        return status;

    }

    public void setStatus(Integer status) {

        this.status = status;

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

    public String getSignature() {

        return signature;

    }

    public void setSignature(String signature) {

        this.signature = signature;

    }


    @Override
    public String toString() {
        return "TUserVo{" +
                ", id '" + id + '\'' +
                ", name '" + name + '\'' +
                ", password '" + password + '\'' +
                ", salt '" + salt + '\'' +
                ", phone '" + phone + '\'' +
                ", email '" + email + '\'' +
                ", status '" + status +
                ", createTime '" + createTime + '\'' +
                ", updateTime '" + updateTime + '\'' +
                ", deleteFlag '" + deleteFlag +
                ", approveStatus '" + approveStatus +
                ", blackListUser '" + blackListUser +
                ", logo '" + logo + '\'' +
                ", pvCount '" + pvCount +
                ", signature '" + signature + '\'' +
                '}';
    }

}
