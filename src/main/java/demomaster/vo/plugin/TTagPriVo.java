package demomaster.vo.plugin;


/**
 * 这里属性是主键字段
 *
 * 表名称      :t_tag
 * 表类型      :BASE TABLE
 * 表引擎      :InnoDB
 * 表版本      :10
 * 行格式      :Dynamic
 * 表创建      :2020-5-13
 * 字符集      :utf8_bin
 * 表注释      :
 */
public class TTagPriVo {

    private String id; 


    public String getId() {

        return id;

    }

    public void setId(String id) {

        this.id = id;

    }

    @Override
    public String toString() {
        return "TTagPriVo{" +
                ", id '" + id + '\'' +
                '}';
    }

}
