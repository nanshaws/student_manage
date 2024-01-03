package cn.student.entity;

import java.io.Serializable;

/**
 * (Major)实体类
 *
 * @author CYL
 * @since 2021-04-17 18:03:51
 */
public class Major implements Serializable {
    private static final long serialVersionUID = -74375470891162387L;
    /**
    * 专业代码
    */
    private Integer majorId;
    /**
    * 专业名称
    */
    private String majorName;
    /**
    * 专业介绍
    */
    private String introduce;
    /**
    * 院系编号
    */
    private Integer deptId;


    public Integer getMajorId() {
        return majorId;
    }

    public void setMajorId(Integer majorId) {
        this.majorId = majorId;
    }

    public String getMajorName() {
        return majorName;
    }

    public void setMajorName(String majorName) {
        this.majorName = majorName;
    }

    public String getIntroduce() {
        return introduce;
    }

    public void setIntroduce(String introduce) {
        this.introduce = introduce;
    }

    public Integer getDeptId() {
        return deptId;
    }

    public void setDeptId(Integer deptId) {
        this.deptId = deptId;
    }

}