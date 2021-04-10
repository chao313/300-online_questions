package demomaster.vo;


/**
 * 表名称      :t_admin_user
 * 表类型      :BASE TABLE
 * 表引擎      :InnoDB
 * 表版本      :10
 * 行格式      :Dynamic
 * 表创建      :2020-5-16
 * 字符集      :utf8_general_ci
 * 表注释      :
 */
public class TAdminUserVo {

    private String id;  // 用户登录ID 
    private String name;  // 用户姓名 
    private String password;  // 密码 
    private String salt;  // 盐 
    private String phone;  // 手机号码 
    private String email;  // 邮箱 
    private Integer status;  // 0-未启用 1-启用 
    private String createTime;  // 创建时间（申请时间） 
    private String updateTime;  // 更新时间 


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


    @Override
    public String toString() {
        return "TAdminUserVo{" +
                ", id '" + id + '\'' +
                ", name '" + name + '\'' +
                ", password '" + password + '\'' +
                ", salt '" + salt + '\'' +
                ", phone '" + phone + '\'' +
                ", email '" + email + '\'' +
                ", status '" + status +
                ", createTime '" + createTime + '\'' +
                ", updateTime '" + updateTime + '\'' +
                '}';
    }

}
