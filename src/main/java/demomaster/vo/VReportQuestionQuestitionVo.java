package demomaster.vo;


/**
 * 表名称      :v_report_question_questition
 * 表类型      :VIEW
 * 表引擎      :
 * 表版本      :0
 * 行格式      :
 * 表创建      :
 * 字符集      :
 * 表注释      :VIEW
 */
public class VReportQuestionQuestitionVo {

    private String id; 
    private String questionId;  // 举报问题id 
    private String questionName;  // 举报问题名称 
    private String reason;  // 举报理由 
    private String id0;  // 问题的id 
    private String userName;  // 问题的发布者name 
    private String title;  // 问题的标题 
    private byte[] content;  // 问题的内容 
    private String tag;  // 问题的类别 
    private Integer isSave;  // 问题是否保存 0草稿, 1 发布 
    private Integer deleteFlag;  // 问题是否删除,0未,1是 
    private Integer status;  // 问题是否终结 0没有终结,1，已终结 
    private Integer blackFlag;  // 是否被屏蔽,0未,1是 
    private String createTime;  // 问题创建时间 
    private String updateTime;  // 问题更新时间 
    private Integer pvCount;  // 问题的浏览量 
    private Integer isTop;  // 是否置顶 


    public String getId() {

        return id;

    }

    public void setId(String id) {

        this.id = id;

    }

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

    public String getTitle() {

        return title;

    }

    public void setTitle(String title) {

        this.title = title;

    }

    public byte[] getContent() {

        return content;

    }

    public void setContent(byte[] content) {

        this.content = content;

    }

    public String getTag() {

        return tag;

    }

    public void setTag(String tag) {

        this.tag = tag;

    }

    public Integer getIsSave() {

        return isSave;

    }

    public void setIsSave(Integer isSave) {

        this.isSave = isSave;

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

    public Integer getPvCount() {

        return pvCount;

    }

    public void setPvCount(Integer pvCount) {

        this.pvCount = pvCount;

    }

    public Integer getIsTop() {

        return isTop;

    }

    public void setIsTop(Integer isTop) {

        this.isTop = isTop;

    }


    @Override
    public String toString() {
        return "VReportQuestionQuestitionVo{" +
                ", id '" + id + '\'' +
                ", questionId '" + questionId + '\'' +
                ", questionName '" + questionName + '\'' +
                ", reason '" + reason + '\'' +
                ", id0 '" + id0 + '\'' +
                ", userName '" + userName + '\'' +
                ", title '" + title + '\'' +
                ", content '" + content +
                ", tag '" + tag + '\'' +
                ", isSave '" + isSave +
                ", deleteFlag '" + deleteFlag +
                ", status '" + status +
                ", blackFlag '" + blackFlag +
                ", createTime '" + createTime + '\'' +
                ", updateTime '" + updateTime + '\'' +
                ", pvCount '" + pvCount +
                ", isTop '" + isTop +
                '}';
    }

}
