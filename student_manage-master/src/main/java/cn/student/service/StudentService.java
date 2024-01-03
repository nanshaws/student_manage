package cn.student.service;

import cn.student.entity.Student;
import com.github.pagehelper.PageInfo;

/**
 * (Student)表服务接口
 *
 * @author CYL
 * @since 2021-04-02 20:11:16
 */
public interface StudentService {

    /**
     * 查询学号密码实现登录
     *
     * @param studentid 学号
     * @return 返回学生部分信息
     */
    Student queryStudent(String studentid);

    /**
     * 修改个人信息
     *
     * @param password 新密码
     * @param phone    新电话
     * @param address  新地址
     */
    void updateInfo(Student student);


    /**
     * 依据学号查询学生信息，用于显示在模态框中
     *
     * @param stuId 学号
     * @return 返回单个学生信息
     */
    Student getStudentById(Integer stuId);

    /**
     * 管理员查询所有学生信息
     *
     * @return 所有学生信息
     */
    PageInfo<Student> getAllStudent(Integer page);


    /**
     * 管理员修改学生信息
     *
     * @param student 学生信息
     */
    void modifyStudentInfo(Student student);


    /**
     * 管理员删除学生信息
     *
     * @param stuId 学号
     */
    void deleteStudentInfo(Integer stuId);


    /**
     * 管理员录入学生信息
     *
     * @param student 学生信息
     */
    void addStudentInfo(Student student);
}