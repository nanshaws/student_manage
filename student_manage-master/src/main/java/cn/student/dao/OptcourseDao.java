package cn.student.dao;

import cn.student.entity.Optcourse;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * (Optcourse)表数据库访问层
 *
 * @author SYJ
 * @since 2021-04-16 20:09:13
 */
public interface OptcourseDao {

    /**
     * 查询该学期各种可选课程
     *
     * @param kind     课程类型
     * @param semester 学期
     * @param term     学年
     * @return 对象列表
     */
    List<Optcourse> queryAllCourse(@Param("kind") String kind, @Param("semester") String semester, @Param("term") String term);

    /**
     * 依据课程号查询课程信息，用于显示在模态框中
     *
     * @param optcourseId 课程号
     * @return 单个课程信息
     */
    Optcourse getOptCourseById(Integer optcourseId);

    /**
     * 管理员查询所有选修课
     *
     * @return 查询所有选修课
     */
    List<Optcourse> getAllOptCourse();

    /**
     * 管理员修改课程信息
     *
     * @param optcourse 课程信息
     */
    void modifyOptCourseInfo(Optcourse optcourse);

    /**
     * 管理员删除课程信息
     *
     * @param optcourseId 课程号
     */
    void deleteOptCourseInfo(Integer optcourseId);

    /**
     * 管理员录入课程信息
     *
     * @param optcourse 课程信息
     */
    void addOptCourseInfo(Optcourse optcourse);
}