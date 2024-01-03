package cn.student.service;

import cn.student.entity.Student;
import cn.student.entity.Teacher;
import com.github.pagehelper.PageInfo;

import java.util.List;

/**
 * (Teacher)表服务接口
 *
 * @author CYL
 * @since 2021-04-02 20:12:38
 */
public interface TeacherService {

    /**
     * 返回教师部分信息
     *
     * @param teacherid 教师工号
     * @param password  密码
     * @param manage    是否管理员
     * @return 教师信息
     */
    Teacher queryTeacher(String teacherid, String password, String manage);

    /**
     * 修改信息
     *
     * @param teacher 教师信息
     */
    void updateInfo(Teacher teacher);

    /**
     * 查询所登录教师所教课程的所选学生
     *
     * @param teaId 登录教师工号
     * @return 所选学生列表对象
     */
    List<Student> queryChooseStudent(Integer teaId);

    /**
     * 依据工号查询教师信息，用于显示在模态框中
     *
     * @param teaId 教师工号
     * @return 教师信息
     */
    Teacher getTeacherById(Integer teaId);

    /**
     * 管理员查询所有教师信息
     *
     * @return 获取全部教师信息
     */
    PageInfo<Teacher> getAllTeacher(Integer page);

    /**
     * 管理员修改教师信息
     *
     * @param teacher 教师信息
     */
    void modifyTeacherInfo(Teacher teacher);

    /**
     * 管理员删除教师信息
     *
     * @param teaId 教师工号
     */
    void deleteTeacherInfo(Integer teaId);

    /**
     * 管理员录入教师信息
     *
     * @param teacher 教师信息
     */
    void addTeacherInfo(Teacher teacher);
}