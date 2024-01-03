package cn.student.service.impl;

import cn.student.entity.Stucourse;
import cn.student.dao.StucourseDao;
import cn.student.service.StucourseService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * (Stucourse)表服务实现类
 *
 * @author CYL
 * @since 2021-04-13 20:56:19
 */
@Service("stucourseService")
public class StucourseServiceImpl implements StucourseService {
    @Resource
    private StucourseDao stucourseDao;

    @Override
    public List<Stucourse> queryAllScore(Integer stuId, String term, String semester) {
        return stucourseDao.queryAllScore(stuId, term, semester);
    }

    @Override
    public List<Stucourse> queryAllOptScore(Integer stuId, String term, String semester) {
        return stucourseDao.queryAllOptScore(stuId, term, semester);
    }

    @Override
    public void chooseCourse(Integer stuId, Integer courseId) {
        stucourseDao.chooseCourse(stuId, courseId);
    }

    @Override
    public void deleteCourse(Integer stuId, Integer courseId) {
        stucourseDao.deleteCourse(stuId, courseId);
    }

    @Override
    public void assignScore(Integer score, Integer stuId, Integer courseId) {
        stucourseDao.assignScore(score, stuId, courseId);
    }

}