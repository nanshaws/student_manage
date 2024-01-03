package cn.student.service.impl;

import cn.student.entity.Student;
import cn.student.entity.Teacher;
import cn.student.dao.TeacherDao;
import cn.student.service.TeacherService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * (Teacher)表服务实现类
 *
 * @author CYL
 * @since 2021-04-02 20:12:38
 */
@Service("teacherService")
public class TeacherServiceImpl implements TeacherService {

    @Resource
    private TeacherDao teacherDao;

    @Override
    public Teacher queryTeacher(String teacherid, String password, String manage) {
        return this.teacherDao.queryTeacher(teacherid, password, manage);
    }

    @Override
    public void updateInfo(Teacher teacher) {
        teacherDao.updateInfo(teacher);
    }

    @Override
    public List<Student> queryChooseStudent(Integer teaId) {
        return teacherDao.queryChooseStudent(teaId);
    }

    @Override
    public Teacher getTeacherById(Integer teaId) {
        return teacherDao.getTeacherById(teaId);
    }

    @Override
    public PageInfo<Teacher> getAllTeacher(Integer page) {
        PageHelper.startPage(page, 14);
        List<Teacher> teachers = teacherDao.getAllTeacher();
        return new PageInfo<>(teachers);
    }

    @Override
    public void modifyTeacherInfo(Teacher teacher) {
        teacherDao.modifyTeacherInfo(teacher);
    }

    @Override
    public void deleteTeacherInfo(Integer teaId) {
        teacherDao.deleteTeacherInfo(teaId);
    }

    @Override
    public void addTeacherInfo(Teacher teacher) {
        teacherDao.addTeacherInfo(teacher);
    }
}