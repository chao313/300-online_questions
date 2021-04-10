package demomaster.vo.plugin;


/**
 * 这里属性是非主键字段
 *
 * 表名称      :v_question_user
 * 表类型      :VIEW
 * 表引擎      :
 * 表版本      :0
 * 行格式      :
 * 表创建      :
 * 字符集      :
 * 表注释      :VIEW
 */
public class VQuestionUserNoPriVo {

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
    private String id0;  // 用户登录ID 
    private String name;  // 用户姓名 
    private Integer status0;  // 0-未启用 1-启用 
    private Integer deleteFlag0;  // 删除标志: 0未删除，1已删除 
    private Integer approveStatus;  // 0: 待审批 1：通过 ：2 拒绝 
    private Integer blackListUser;  // 是否是黑名单 1 -> 是 0 -> 不是 
    private String logo;  // 用户头像 
    private Integer pvCount0;  // 用户主页的浏览量 


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
    public String getId0() {

        return id0;

    }

    public void setId0(String id0) {

        this.id0 = id0;

    }
    public String getName() {

        return name;

    }

    public void setName(String name) {

        this.name = name;

    }
    public Integer getStatus0() {

        return status0;

    }

    public void setStatus0(Integer status0) {

        this.status0 = status0;

    }
    public Integer getDeleteFlag0() {

        return deleteFlag0;

    }

    public void setDeleteFlag0(Integer deleteFlag0) {

        this.deleteFlag0 = deleteFlag0;

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
    public Integer getPvCount0() {

        return pvCount0;

    }

    public void setPvCount0(Integer pvCount0) {

        this.pvCount0 = pvCount0;

    }

    @Override
    public String toString() {
        return "VQuestionUserNoPriVo{" +
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
                ", id0 '" + id0 + '\'' +
                ", name '" + name + '\'' +
                ", status0 '" + status0 +
                ", deleteFlag0 '" + deleteFlag0 +
                ", approveStatus '" + approveStatus +
                ", blackListUser '" + blackListUser +
                ", logo '" + logo + '\'' +
                ", pvCount0 '" + pvCount0 +
                '}';
    }

}
