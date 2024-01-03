package cn.student.entity;


import org.springframework.format.annotation.DateTimeFormat;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Past;
import javax.validation.constraints.Pattern;
import java.util.Date;
import java.io.Serializable;

/**
 * (Teacher)实体类
 *
 * @author CYL
 * @since 2021-04-02 20:12:38
 */
public class Teacher implements Serializable {
    private static final long serialVersionUID = 537543615169170249L;
    /**
     * 工号
     */
    private Integer id;
    /**
     * 姓名
     */
    @Pattern(regexp = "[\u4e00-\u9fa5]{2,5}|[a-zA-Z]{1}[a-zA-Z\\s]{0,20}[a-zA-Z]{1}", message = "名字不合法！")
    private String name;
    /**
     * 性别
     */
    @Pattern(regexp = "[男|女]", message = "性别输入错误！")
    private String sex;
    /**
     * 密码
     */
    @Pattern(regexp = "(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{8,16}", message = "密码不合法！")
    private String password;
    /**
     * 出生日期
     */
    @Past(message = "看看哪年哪月哪日？")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date birthday;
    /**
     * 职称
     */
    @Pattern(regexp = "[讲师|教授|副教授]{2,3}", message = "职称输入错误！")
    private String duty;
    /**
     * 1表示是管理员，0表示不是
     */
    private Integer manager;
    /**
     * 所属院系
     */
    private Dept dept;
    /**
     * 院系代码
     */
    @Pattern(regexp = "3304[0-9]{2}", message = "院系代码错误！")
    private String did;
    /**
     * 所教课程
     */
    private Optcourse optcourse;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public String getDuty() {
        return duty;
    }

    public void setDuty(String duty) {
        this.duty = duty;
    }

    public Integer getManager() {
        return manager;
    }

    public void setManager(Integer manager) {
        this.manager = manager;
    }

    public Dept getDept() {
        return dept;
    }

    public void setDept(Dept dept) {
        this.dept = dept;
    }

    public Optcourse getOptcourse() {
        return optcourse;
    }

    public void setOptcourse(Optcourse optcourse) {
        this.optcourse = optcourse;
    }

    public String getDid() {
        return did;
    }

    public void setDid(String did) {
        this.did = did;
    }
}