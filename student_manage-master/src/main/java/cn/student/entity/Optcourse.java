package cn.student.entity;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Pattern;
import java.io.Serializable;

/**
 * (Optcourse)实体类
 *
 * @author CYL
 * @since 2021-04-16 20:09:13
 */
public class Optcourse implements Serializable {
    private static final long serialVersionUID = -12279405701889709L;
    /**
     * 选修课程号
     */
    private Integer id;
    /**
     * 选修课程名称
     */
    @NotEmpty(message = "课程名称不能为空！")
    @Pattern(regexp = "[\u4e00-\u9fa5]{2,15}|[a-zA-Z]{1}[a-zA-Z\\s]{1,30}[a-zA-Z]{1}", message = "课程名称不合法！")
    private String name;
    /**
     * 学分
     */
    private Object score;
    /**
     * 选修课程种类
     */
    @NotEmpty(message = "课程类型不能为空！")
    @Pattern(regexp = "[教师教育|科学素养|人文素养|艺术素养]{4}类",message = "课程类型不匹配！")
    private String kind;
    /**
     * 学期
     */
    @NotEmpty(message = "学期不能为空！")
    @Pattern(regexp = "第[一|二]学期",message = "学期输入错误！")
    private String semester;
    /**
     * 学年
     */
    @NotEmpty(message = "学年不能为空！")
    @Pattern(regexp = "20[0-9]{2}-20[0-9]{2}学年",message = "学年输入错误！")
    private String term;
    /**
     * 教师工号
     */
    @NotEmpty(message = "教师工号不能为空！")
    @Pattern(regexp = "27[0-9]{3}",message = "教师工号格式不正确！")
    private String tid;
    /**
     * 教师相关信息
     */
    private Teacher teacher;


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

    public Object getScore() {
        return score;
    }

    public void setScore(Object score) {
        this.score = score;
    }

    public String getKind() {
        return kind;
    }

    public void setKind(String kind) {
        this.kind = kind;
    }

    public String getSemester() {
        return semester;
    }

    public void setSemester(String semester) {
        this.semester = semester;
    }

    public String getTerm() {
        return term;
    }

    public void setTerm(String term) {
        this.term = term;
    }

    public String getTid() {
        return tid;
    }

    public void setTid(String tid) {
        this.tid = tid;
    }

    public Teacher getTeacher() {
        return teacher;
    }

    public void setTeacher(Teacher teacher) {
        this.teacher = teacher;
    }

}