package cn.student.entity;

import java.io.Serializable;

/**
 * (Stucourse)实体类
 *
 * @author SYJ
 * @since 2021-04-13 20:56:19
 */
public class Stucourse implements Serializable {
    private static final long serialVersionUID = 215664168696088076L;

    private Integer id;
    /**
    * 学号
    */
    private Integer stuId;
    /**
    * 课程编号
    */
    private Integer courseId;
    /**
    * 成绩
    */
    private Integer score;
    /**
     * 查询必修课
     */
    private Course course;
    /**
     * 查询选修课
     */
    private Optcourse optcourse;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getStuId() {
        return stuId;
    }

    public void setStuId(Integer stuId) {
        this.stuId = stuId;
    }

    public Integer getCourseId() {
        return courseId;
    }

    public void setCourseId(Integer courseId) {
        this.courseId = courseId;
    }

    public Integer getScore() {
        return score;
    }

    public void setScore(Integer score) {
        this.score = score;
    }

    public Course getCourse() {
        return course;
    }

    public void setCourse(Course course) {
        this.course = course;
    }

    public Optcourse getOptcourse() {
        return optcourse;
    }

    public void setOptcourse(Optcourse optcourse) {
        this.optcourse = optcourse;
    }
}