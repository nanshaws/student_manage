package cn.student.service.impl;

import cn.student.entity.Optcourse;
import cn.student.dao.OptcourseDao;
import cn.student.service.OptcourseService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * (Optcourse)表服务实现类
 *
 * @author SYJ
 * @since 2021-04-16 20:09:13
 */
@Service("optcourseService")
public class OptcourseServiceImpl implements OptcourseService {
    @Resource
    private OptcourseDao optcourseDao;

    @Override
    public List<Optcourse> queryAllCourse(String kind, String semester, String term) {
        return optcourseDao.queryAllCourse(kind, semester, term);
    }

    @Override
    public Optcourse getOptCourseById(Integer optcourseId) {
        return optcourseDao.getOptCourseById(optcourseId);
    }

    @Override
    public PageInfo<Optcourse> getAllOptCourse(Integer page) {
        PageHelper.startPage(page, 14);
        List<Optcourse> optCpurses = optcourseDao.getAllOptCourse();
        return new PageInfo<>(optCpurses);
    }

    @Override
    public void modifyOptCourseInfo(Optcourse optcourse) {
        optcourseDao.modifyOptCourseInfo(optcourse);
    }

    @Override
    public void deleteOptCourseInfo(Integer optcourseId) {
        optcourseDao.deleteOptCourseInfo(optcourseId);
    }

    @Override
    public void addOptCourseInfo(Optcourse optcourse) {
        optcourseDao.addOptCourseInfo(optcourse);
    }

}