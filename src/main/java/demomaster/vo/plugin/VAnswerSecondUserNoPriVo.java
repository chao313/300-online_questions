package demomaster.vo.plugin;


/**
 * 这里属性是非主键字段
 *
 * 表名称      :v_answer_second_user
 * 表类型      :VIEW
 * 表引擎      :
 * 表版本      :0
 * 行格式      :
 * 表创建      :
 * 字符集      :
 * 表注释      :VIEW
 */
public class VAnswerSecondUserNoPriVo {

    private String userName;  // 回答用户的Name 
    private String questionId;  // 问题的id 
    private String questionTitle;  // 问题的title 
    private byte[] answerContent;  // 问题的内容 
    private Integer deleteFlag;  // 是否删除 
    private Integer blackFlag;  // 是否黑名单 
    private String id;  // 回答的uuid 
    private String time;  // 创建时间 
    private String answerId;  // 回答的问题id 
    private Integer status;  // 0-未启用 1-启用 
    private Integer approveStatus;  // 0: 待审批 1：通过 ：2 拒绝 
    private Integer userDeleteFlag;  // 删除标志: 0未删除，1已删除 
    private Integer blackListUser;  // 是否是黑名单 1 -> 是 0 -> 不是 
    private String logo;  // 用户头像 
    private Integer pvCount;  // 用户主页的浏览量 
    private String userId;  // 用户登录ID 


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
    public byte[] getAnswerContent() {

        return answerContent;

    }

    public void setAnswerContent(byte[] answerContent) {

        this.answerContent = answerContent;

    }
    public Integer getDeleteFlag() {

        return deleteFlag;

    }

    public void setDeleteFlag(Integer deleteFlag) {

        this.deleteFlag = deleteFlag;

    }
    public Integer getBlackFlag() {

        return blackFlag;

    }

    public void setBlackFlag(Integer blackFlag) {

        this.blackFlag = blackFlag;

    }
    public String getId() {

        return id;

    }

    public void setId(String id) {

        this.id = id;

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
    public Integer getStatus() {

        return status;

    }

    public void setStatus(Integer status) {

        this.status = status;

    }
    public Integer getApproveStatus() {

        return approveStatus;

    }

    public void setApproveStatus(Integer approveStatus) {

        this.approveStatus = approveStatus;

    }
    public Integer getUserDeleteFlag() {

        return userDeleteFlag;

    }

    public void setUserDeleteFlag(Integer userDeleteFlag) {

        this.userDeleteFlag = userDeleteFlag;

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
    public String getUserId() {

        return userId;

    }

    public void setUserId(String userId) {

        this.userId = userId;

    }

    @Override
    public String toString() {
        return "VAnswerSecondUserNoPriVo{" +
                ", userName '" + userName + '\'' +
                ", questionId '" + questionId + '\'' +
                ", questionTitle '" + questionTitle + '\'' +
                ", answerContent '" + answerContent +
                ", deleteFlag '" + deleteFlag +
                ", blackFlag '" + blackFlag +
                ", id '" + id + '\'' +
                ", time '" + time + '\'' +
                ", answerId '" + answerId + '\'' +
                ", status '" + status +
                ", approveStatus '" + approveStatus +
                ", userDeleteFlag '" + userDeleteFlag +
                ", blackListUser '" + blackListUser +
                ", logo '" + logo + '\'' +
                ", pvCount '" + pvCount +
                ", userId '" + userId + '\'' +
                '}';
    }

}
