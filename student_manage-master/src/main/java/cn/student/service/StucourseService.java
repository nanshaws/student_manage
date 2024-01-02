package cn.student.service;

import cn.student.entity.Stucourse;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * (Stucourse)表服务接口
 *
 * @author SYJ
 * @since 2021-04-13 20:56:19
 */
public interface StucourseService {

    /**
     * 通过学号查询该学期成绩
     *
     * @param stuId    学号
     * @param term     学年
     * @param semester 学期
     * @return 该生该学期成绩
     */
    List<Stucourse> queryAllScore(Integer stuId, String term, String semester);

    /**
     * 通过学号查询选修课该学期成绩
     *
     * @param stuId    学号
     * @param term     学年
     * @param semester 学期
     * @return 该生该学期成绩
     */
    List<Stucourse> queryAllOptScore(Integer stuId, String term, String semester);

    /**
     * 实现选课
     *
     * @param stuId    学号
     * @param courseId 课程号
     */
    void chooseCourse(Integer stuId, Integer courseId);

    /**
     * 实现退课
     *
     * @param stuId    学号
     * @param courseId 课程号
     */
    void deleteCourse(Integer stuId, Integer courseId);

    /**
     * 进行学生成绩登记
     *
     * @param score    成绩
     * @param stuId    学生学号
     * @param courseId 课程号
     */
    void assignScore(Integer score, Integer stuId, Integer courseId);
}