package demomaster.vo;


/**
 * 表名称      :v_question_answer_sum
 * 表类型      :VIEW
 * 表引擎      :
 * 表版本      :0
 * 行格式      :
 * 表创建      :
 * 字符集      :
 * 表注释      :VIEW
 */
public class VQuestionAnswerSumVo {

    private Long answerSum; 
    private String questionId;  // 问题的id 


    public Long getAnswerSum() {

        return answerSum;

    }

    public void setAnswerSum(Long answerSum) {

        this.answerSum = answerSum;

    }

    public String getQuestionId() {

        return questionId;

    }

    public void setQuestionId(String questionId) {

        this.questionId = questionId;

    }


    @Override
    public String toString() {
        return "VQuestionAnswerSumVo{" +
                ", answerSum '" + answerSum +
                ", questionId '" + questionId + '\'' +
                '}';
    }

}
