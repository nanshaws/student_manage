package cn.student.service.impl;

import cn.student.entity.Student;
import cn.student.dao.StudentDao;
import cn.student.service.StudentService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * (Student)表服务实现类
 *
 * @author CYL
 * @since 2021-04-02 20:11:16
 */
@Service("studentService")
public class StudentServiceImpl implements StudentService {
    @Autowired
    private StudentDao studentDao;

    @Override
    public Student queryStudent(String studentid) {
        return this.studentDao.queryStudent(studentid);
    }

    @Override
    public void updateInfo(Student student) {
        studentDao.updateInfo(student);
    }

    @Override
    public Student getStudentById(Integer stuId) {
        return studentDao.getStudentById(stuId);
    }

    @Override
    public PageInfo<Student> getAllStudent(Integer page) {
        PageHelper.startPage(page, 14);
        List<Student> students = studentDao.getAllStudent();
        return new PageInfo<>(students);
    }

    @Override
    public void modifyStudentInfo(Student student) {
        studentDao.modifyStudentInfo(student);
    }

    @Override
    public void deleteStudentInfo(Integer stuId) {
        studentDao.deleteStudentInfo(stuId);
    }

    @Override
    public void addStudentInfo(Student student) {
        studentDao.addStudentInfo(student);
    }
}