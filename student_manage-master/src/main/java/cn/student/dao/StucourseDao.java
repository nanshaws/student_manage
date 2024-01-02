package cn.student.dao;

import cn.student.entity.Stucourse;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * (Stucourse)表数据库访问层
 *
 * @author SYJ
 * @since 2021-04-13 20:56:19
 */
public interface StucourseDao {

    /**
     * 通过学号查询必修课该学期成绩
     *
     * @param stuId    学号
     * @param term     学年
     * @param semester 学期
     * @return 该生该学期成绩
     */
    List<Stucourse> queryAllScore(@Param("stuId") Integer stuId, @Param("term") String term, @Param("semester") String semester);

    /**
     * 通过学号查询选修课该学期成绩
     *
     * @param stuId    学号
     * @param term     学年
     * @param semester 学期
     * @return 该生该学期成绩
     */
    List<Stucourse> queryAllOptScore(@Param("stuId") Integer stuId, @Param("term") String term, @Param("semester") String semester);

    /**
     * 实现选课
     *
     * @param stuId    学号
     * @param courseId 课程号
     */
    void chooseCourse(@Param("stuId") Integer stuId, @Param("courseId") Integer courseId);

    /**
     * 实现退课
     *
     * @param stuId    学号
     * @param courseId 课程号
     */
    void deleteCourse(@Param("stuId") Integer stuId, @Param("courseId") Integer courseId);

    /**
     * 进行学生成绩登记
     *
     * @param score 成绩
     * @param stuId 学生学号
     * @param courseId 课程号
     */
    void assignScore(@Param("score") Integer score, @Param("stuId") Integer stuId, @Param("courseId") Integer courseId);
}