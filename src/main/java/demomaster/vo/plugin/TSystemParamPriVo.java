package demomaster.vo.plugin;


/**
 * 这里属性是主键字段
 *
 * 表名称      :t_system_param
 * 表类型      :BASE TABLE
 * 表引擎      :InnoDB
 * 表版本      :10
 * 行格式      :Dynamic
 * 表创建      :2020-5-12
 * 字符集      :utf8mb4_general_ci
 * 表注释      :系统参数表
 */
public class TSystemParamPriVo {

    private String paramId;  // 参数id 


    public String getParamId() {

        return paramId;

    }

    public void setParamId(String paramId) {

        this.paramId = paramId;

    }

    @Override
    public String toString() {
        return "TSystemParamPriVo{" +
                ", paramId '" + paramId + '\'' +
                '}';
    }

}
