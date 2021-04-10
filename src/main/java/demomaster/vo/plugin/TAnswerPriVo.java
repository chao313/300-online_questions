package demomaster.vo.plugin;


/**
 * 这里属性是主键字段
 *
 * 表名称      :t_answer
 * 表类型      :BASE TABLE
 * 表引擎      :InnoDB
 * 表版本      :10
 * 行格式      :Dynamic
 * 表创建      :2020-5-16
 * 字符集      :utf8_bin
 * 表注释      :回答时间
 */
public class TAnswerPriVo {

    private String id;  // 回答的uuid 


    public String getId() {

        return id;

    }

    public void setId(String id) {

        this.id = id;

    }

    @Override
    public String toString() {
        return "TAnswerPriVo{" +
                ", id '" + id + '\'' +
                '}';
    }

}
