package demomaster.vo.plugin;


/**
 * 这里属性是非主键字段
 *
 * 表名称      :v_hot_question
 * 表类型      :VIEW
 * 表引擎      :
 * 表版本      :0
 * 行格式      :
 * 表创建      :
 * 字符集      :
 * 表注释      :VIEW
 */
public class VHotQuestionNoPriVo {

    private String id;  // 问题的id 
    private String userName;  // 问题的发布者name 
    private String title;  // 问题的标题 
    private byte[] content;  // 问题的内容 
    private Integer isTop;  // 是否置顶 
    private Integer pvCount;  // 问题的浏览量 
    private String updateTime;  // 问题更新时间 
    private String createTime;  // 问题创建时间 
    private Integer blackFlag;  // 是否被屏蔽,0未,1是 
    private Integer deleteFlag;  // 问题是否删除,0未,1是 
    private Integer status;  // 问题是否终结 0没有终结,1，已终结 
    private Integer isSave;  // 问题是否保存 0草稿, 1 发布 
    private String tag;  // 问题的类别 
    private Long followSum; 
    private Long answerSum; 
    private String lastAnswerTime;  // 创建时间 


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
    public Integer getIsTop() {

        return isTop;

    }

    public void setIsTop(Integer isTop) {

        this.isTop = isTop;

    }
    public Integer getPvCount() {

        return pvCount;

    }

    public void setPvCount(Integer pvCount) {

        this.pvCount = pvCount;

    }
    public String getUpdateTime() {

        return updateTime;

    }

    public void setUpdateTime(String updateTime) {

        this.updateTime = updateTime;

    }
    public String getCreateTime() {

        return createTime;

    }

    public void setCreateTime(String createTime) {

        this.createTime = createTime;

    }
    public Integer getBlackFlag() {

        return blackFlag;

    }

    public void setBlackFlag(Integer blackFlag) {

        this.blackFlag = blackFlag;

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
    public Integer getIsSave() {

        return isSave;

    }

    public void setIsSave(Integer isSave) {

        this.isSave = isSave;

    }
    public String getTag() {

        return tag;

    }

    public void setTag(String tag) {

        this.tag = tag;

    }
    public Long getFollowSum() {

        return followSum;

    }

    public void setFollowSum(Long followSum) {

        this.followSum = followSum;

    }
    public Long getAnswerSum() {

        return answerSum;

    }

    public void setAnswerSum(Long answerSum) {

        this.answerSum = answerSum;

    }
    public String getLastAnswerTime() {

        return lastAnswerTime;

    }

    public void setLastAnswerTime(String lastAnswerTime) {

        this.lastAnswerTime = lastAnswerTime;

    }

    @Override
    public String toString() {
        return "VHotQuestionNoPriVo{" +
                ", id '" + id + '\'' +
                ", userName '" + userName + '\'' +
                ", title '" + title + '\'' +
                ", content '" + content +
                ", isTop '" + isTop +
                ", pvCount '" + pvCount +
                ", updateTime '" + updateTime + '\'' +
                ", createTime '" + createTime + '\'' +
                ", blackFlag '" + blackFlag +
                ", deleteFlag '" + deleteFlag +
                ", status '" + status +
                ", isSave '" + isSave +
                ", tag '" + tag + '\'' +
                ", followSum '" + followSum +
                ", answerSum '" + answerSum +
                ", lastAnswerTime '" + lastAnswerTime + '\'' +
                '}';
    }

}
