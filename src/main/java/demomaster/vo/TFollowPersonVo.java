package demomaster.vo;


/**
 * 表名称      :t_follow_person
 * 表类型      :BASE TABLE
 * 表引擎      :InnoDB
 * 表版本      :10
 * 行格式      :Dynamic
 * 表创建      :2020-5-16
 * 字符集      :utf8_bin
 * 表注释      :用户关注
 */
public class TFollowPersonVo {

    private String userNameFollow;  // 被关注的人 
    private String userName;  // 关注的人 
    private String cteateTime; 


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


    @Override
    public String toString() {
        return "TFollowPersonVo{" +
                ", userNameFollow '" + userNameFollow + '\'' +
                ", userName '" + userName + '\'' +
                ", cteateTime '" + cteateTime + '\'' +
                '}';
    }

}
