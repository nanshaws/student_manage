package cn.student.service;

import cn.student.entity.Optcourse;
import com.github.pagehelper.PageInfo;

import java.util.List;

/**
 * (Optcourse)表服务接口
 *
 * @author CYL
 * @since 2021-04-16 20:09:13
 */
public interface OptcourseService {

    /**
     * 查询该学期各种可选课程
     *
     * @param kind     课程类型
     * @param semester 学期
     * @param term     学年
     * @return 对象列表
     */
    List<Optcourse> queryAllCourse(String kind, String semester, String term);

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
    PageInfo<Optcourse> getAllOptCourse(Integer page);


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