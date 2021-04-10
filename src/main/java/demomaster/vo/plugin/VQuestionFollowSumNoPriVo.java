package demomaster.vo.plugin;


/**
 * 这里属性是非主键字段
 *
 * 表名称      :v_question_follow_sum
 * 表类型      :VIEW
 * 表引擎      :
 * 表版本      :0
 * 行格式      :
 * 表创建      :
 * 字符集      :
 * 表注释      :VIEW
 */
public class VQuestionFollowSumNoPriVo {

    private Long followSum; 
    private String questionId;  // 问题的id 


    public Long getFollowSum() {

        return followSum;

    }

    public void setFollowSum(Long followSum) {

        this.followSum = followSum;

    }
    public String getQuestionId() {

        return questionId;

    }

    public void setQuestionId(String questionId) {

        this.questionId = questionId;

    }

    @Override
    public String toString() {
        return "VQuestionFollowSumNoPriVo{" +
                ", followSum '" + followSum +
                ", questionId '" + questionId + '\'' +
                '}';
    }

}
