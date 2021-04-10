package demomaster.vo;


/**
 * 表名称      :t_system_param
 * 表类型      :BASE TABLE
 * 表引擎      :InnoDB
 * 表版本      :10
 * 行格式      :Dynamic
 * 表创建      :2020-5-12
 * 字符集      :utf8mb4_general_ci
 * 表注释      :系统参数表
 */
public class TSystemParamVo {

    private String paramId;  // 参数id 
    private String paramValue;  // 参数值 
    private String paramDesc;  // 参数描述 


    public String getParamId() {

        return paramId;

    }

    public void setParamId(String paramId) {

        this.paramId = paramId;

    }

    public String getParamValue() {

        return paramValue;

    }

    public void setParamValue(String paramValue) {

        this.paramValue = paramValue;

    }

    public String getParamDesc() {

        return paramDesc;

    }

    public void setParamDesc(String paramDesc) {

        this.paramDesc = paramDesc;

    }


    @Override
    public String toString() {
        return "TSystemParamVo{" +
                ", paramId '" + paramId + '\'' +
                ", paramValue '" + paramValue + '\'' +
                ", paramDesc '" + paramDesc + '\'' +
                '}';
    }

}
