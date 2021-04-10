package demomaster.vo.plugin;


/**
 * 这里属性是主键字段
 *
 * 表名称      :t_user
 * 表类型      :BASE TABLE
 * 表引擎      :InnoDB
 * 表版本      :10
 * 行格式      :Dynamic
 * 表创建      :2020-5-17
 * 字符集      :utf8_general_ci
 * 表注释      :
 */
public class TUserPriVo {

    private String name;  // 用户姓名 


    public String getName() {

        return name;

    }

    public void setName(String name) {

        this.name = name;

    }

    @Override
    public String toString() {
        return "TUserPriVo{" +
                ", name '" + name + '\'' +
                '}';
    }

}
