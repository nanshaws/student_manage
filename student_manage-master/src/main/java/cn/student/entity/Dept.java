package cn.student.entity;

import java.io.Serializable;

/**
 * (Dept)实体类
 *
 * @author CYL
 * @since 2021-04-15 11:21:52
 */
public class Dept implements Serializable {
    private static final long serialVersionUID = -81889552334135080L;
    /**
    * 院系编号
    */
    private Integer deptId;
    /**
    * 院系名称
    */
    private String deptName;
    /**
    * 院系院长
    */
    private String deptDean;
    /**
    * 联系电话
    */
    private String phone;


    public Integer getDeptId() {
        return deptId;
    }

    public void setDeptId(Integer deptId) {
        this.deptId = deptId;
    }

    public String getDeptName() {
        return deptName;
    }

    public void setDeptName(String deptName) {
        this.deptName = deptName;
    }

    public String getDeptDean() {
        return deptDean;
    }

    public void setDeptDean(String deptDean) {
        this.deptDean = deptDean;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

}