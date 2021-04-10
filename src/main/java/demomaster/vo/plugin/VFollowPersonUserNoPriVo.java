package demomaster.vo.plugin;


/**
 * 这里属性是非主键字段
 *
 * 表名称      :v_follow_person_user
 * 表类型      :VIEW
 * 表引擎      :
 * 表版本      :0
 * 行格式      :
 * 表创建      :
 * 字符集      :
 * 表注释      :VIEW
 */
public class VFollowPersonUserNoPriVo {

    private String userNameFollow;  // 被关注的人 
    private String userName;  // 关注的人 
    private String cteateTime; 
    private String id;  // 用户登录ID 
    private String name;  // 用户姓名 
    private String email;  // 邮箱 
    private String signature;  // 个性签名 
    private String logo;  // 用户头像 
    private Integer blackListUser;  // 是否是黑名单 1 -> 是 0 -> 不是 
    private Integer approveStatus;  // 0: 待审批 1：通过 ：2 拒绝 
    private Integer status;  // 0-未启用 1-启用 
    private String phone;  // 手机号码 


    public String getUserNameFollow() {

        return userNameFollow;

    }

    public void setUserNameFollow(String userNameFollow) {

        this.userNameFollow = userNameFollow;

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
    public String getEmail() {

        return email;

    }

    public void setEmail(String email) {

        this.email = email;

    }
    public String getSignature() {

        return signature;

    }

    public void setSignature(String signature) {

        this.signature = signature;

    }
    public String getLogo() {

        return logo;

    }

    public void setLogo(String logo) {

        this.logo = logo;

    }
    public Integer getBlackListUser() {

        return blackListUser;

    }

    public void setBlackListUser(Integer blackListUser) {

        this.blackListUser = blackListUser;

    }
    public Integer getApproveStatus() {

        return approveStatus;

    }

    public void setApproveStatus(Integer approveStatus) {

        this.approveStatus = approveStatus;

    }
    public Integer getStatus() {

        return status;

    }

    public void setStatus(Integer status) {

        this.status = status;

    }
    public String getPhone() {

        return phone;

    }

    public void setPhone(String phone) {

        this.phone = phone;

    }

    @Override
    public String toString() {
        return "VFollowPersonUserNoPriVo{" +
                ", userNameFollow '" + userNameFollow + '\'' +
                ", userName '" + userName + '\'' +
                ", cteateTime '" + cteateTime + '\'' +
                ", id '" + id + '\'' +
                ", name '" + name + '\'' +
                ", email '" + email + '\'' +
                ", signature '" + signature + '\'' +
                ", logo '" + logo + '\'' +
                ", blackListUser '" + blackListUser +
                ", approveStatus '" + approveStatus +
                ", status '" + status +
                ", phone '" + phone + '\'' +
                '}';
    }

}
