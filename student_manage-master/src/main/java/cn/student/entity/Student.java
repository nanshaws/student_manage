package cn.student.entity;

import org.springframework.format.annotation.DateTimeFormat;

import javax.validation.constraints.Past;
import javax.validation.constraints.Pattern;
import java.util.Date;
import java.io.Serializable;

/**
 * (Student)实体类
 *
 * @author CYL
 * @since 2021-04-02 20:11:14
 */
public class Student implements Serializable {
    private static final long serialVersionUID = -38281649992254462L;
    /**
     * 学号
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
     * 出生日期
     */
    @Past(message = "看看哪年哪月哪日？")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date birthday;
    /**
     * 地址
     */
    @Pattern(regexp = "[\u4e00-\u9fa5]{6,16}", message = "地址格式不正确！")
    private String address;
    /**
     * 电话
     */
    @Pattern(regexp = "(?:(?:\\+|00)86)?1(?:(?:3[\\d])|(?:4[5-7|9])|(?:5[0-3|5-9])|(?:6[5-7])|(?:7[0-8])|(?:8[\\d])|(?:9[1|8|9]))\\d{8}", message = "手机号码不合法！")
    private String phone;
    /**
     * 密码
     */
    @Pattern(regexp = "(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{8,16}", message = "密码不合法！")
    private String password;
    /**
     * 班级
     */
    @Pattern(regexp = "[\u4e00-\u9fa5]{2,4}[0-9]{2}\\.[0-9]{1,2}[本|专]", message = "班级格式不正确！")
    private String classId;
    /**
     * 所属院系信息
     */
    private Dept dept;
    /**
     * 院系代码
     */
    @Pattern(regexp = "3304[0-9]{2}", message = "院系代码不正确！")
    private String did;
    /**
     * 专业信息
     */
    private Major major;
    /**
     * 专业代码
     */
    @Pattern(regexp = "410[1-9]{1}[0-9]{2}", message = "专业代码不正确！")
    private String mid;
    /**
     * 入学时间
     */
    @Past(message = "看看哪年哪月哪日？")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date enrollTime;
    /**
     * 个人相关成绩信息
     */
    private Stucourse stucourse;

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

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getClassId() {
        return classId;
    }

    public void setClassId(String classId) {
        this.classId = classId;
    }

    public Dept getDept() {
        return dept;
    }

    public void setDept(Dept dept) {
        this.dept = dept;
    }

    public Major getMajor() {
        return major;
    }

    public void setMajor(Major major) {
        this.major = major;
    }

    public Date getEnrollTime() {
        return enrollTime;
    }

    public void setEnrollTime(Date enrollTime) {
        this.enrollTime = enrollTime;
    }

    public Stucourse getStucourse() {
        return stucourse;
    }

    public void setStucourse(Stucourse stucourse) {
        this.stucourse = stucourse;
    }

    public String getDid() {
        return did;
    }

    public void setDid(String did) {
        this.did = did;
    }

    public String getMid() {
        return mid;
    }

    public void setMid(String mid) {
        this.mid = mid;
    }
}