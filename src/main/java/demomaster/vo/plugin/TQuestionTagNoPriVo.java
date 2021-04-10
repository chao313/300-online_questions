package demomaster.vo.plugin;


/**
 * 这里属性是非主键字段
 *
 * 表名称      :t_question_tag
 * 表类型      :BASE TABLE
 * 表引擎      :InnoDB
 * 表版本      :10
 * 行格式      :Dynamic
 * 表创建      :2020-5-13
 * 字符集      :utf8_bin
 * 表注释      :关联问题和tag
 */
public class TQuestionTagNoPriVo {

    private String questionId;  // 问题的id 
    private String tagId;  // 问题标签的id 


    public String getQuestionId() {

        return questionId;

    }

    public void setQuestionId(String questionId) {

        this.questionId = questionId;

    }
    public String getTagId() {

        return tagId;

    }

    public void setTagId(String tagId) {

        this.tagId = tagId;

    }

    @Override
    public String toString() {
        return "TQuestionTagNoPriVo{" +
                ", questionId '" + questionId + '\'' +
                ", tagId '" + tagId + '\'' +
                '}';
    }

}
