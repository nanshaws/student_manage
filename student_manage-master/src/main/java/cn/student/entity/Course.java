package cn.student.entity;

import java.io.Serializable;

/**
 * (Course)实体类
 *
 * @author CYL
 * @since 2021-04-15 10:48:36
 */
public class Course implements Serializable {
    private static final long serialVersionUID = -62844924527969691L;
    /**
    * 课程编号
    */
    private Integer id;
    /**
    * 课程名称
    */
    private String name;
    /**
    * 学时
    */
    private String period;
    /**
    * 学分
    */
    private String score;
    /**
    * 学期
    */
    private String semester;
    /**
    * 学年
    */
    private String term;
    /**
     * 课程类型
     */
    private String kind;


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

    public String getPeriod() {
        return period;
    }

    public void setPeriod(String period) {
        this.period = period;
    }

    public String getScore() {
        return score;
    }

    public void setScore(String score) {
        this.score = score;
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

    public String getKind() {
        return kind;
    }

    public void setKind(String kind) {
        this.kind = kind;
    }
}