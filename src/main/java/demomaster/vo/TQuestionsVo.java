package demomaster.vo;


/**
 * 表名称      :t_questions
 * 表类型      :BASE TABLE
 * 表引擎      :InnoDB
 * 表版本      :10
 * 行格式      :Dynamic
 * 表创建      :2020-5-17
 * 字符集      :utf8_bin
 * 表注释      :
 */
public class TQuestionsVo {

    private String id;  // 问题的id 
    private String userName;  // 问题的发布者name 
    private String title;  // 问题的标题 
    private byte[] content;  // 问题的内容 
    private String tag;  // 问题的类别 
    private Integer isSave;  // 问题是否保存 0草稿, 1 发布 
    private Integer status;  // 问题是否终结 0没有终结,1，已终结 
    private Integer deleteFlag;  // 问题是否删除,0未,1是 
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

    public Integer getStatus() {

        return status;

    }

    public void setStatus(Integer status) {

        this.status = status;

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
        return "TQuestionsVo{" +
                ", id '" + id + '\'' +
                ", userName '" + userName + '\'' +
                ", title '" + title + '\'' +
                ", content '" + content +
                ", tag '" + tag + '\'' +
                ", isSave '" + isSave +
                ", status '" + status +
                ", deleteFlag '" + deleteFlag +
                ", blackFlag '" + blackFlag +
                ", createTime '" + createTime + '\'' +
                ", updateTime '" + updateTime + '\'' +
                ", pvCount '" + pvCount +
                ", isTop '" + isTop +
                '}';
    }

}
