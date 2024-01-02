package cn.student.controller;

import cn.student.core.annotation.StudentOptLog;
import cn.student.entity.Optcourse;
import cn.student.entity.Stucourse;
import cn.student.entity.Student;
import cn.student.exception.ParamIllegalException;
import cn.student.service.OptcourseService;
import cn.student.service.StucourseService;
import cn.student.service.StudentService;
import cn.student.util.R;
import cn.student.util.ResultCode;
import lombok.extern.slf4j.Slf4j;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * (Student)表控制层
 *
 * @author SYJ
 * @since 2021-04-02 20:11:17
 */
@RestController
@Slf4j
@RequestMapping("/student")
public class StudentController {
    /**
     * 服务对象
     */
    @Resource
    private StucourseService stucourseService;

    @Resource
    private OptcourseService optcourseService;

    @Resource
    private StudentService studentService;

    /**
     * 用于验证参数是否符合要求,不符合要求抛出参数异常
     *
     * @param allErrors 所有错误信息
     */
    public void validData(List<ObjectError> allErrors) {
        Map<String, String> errors = new HashMap<>(4);
        for (ObjectError allError : allErrors) {
            String code = allError.getCode();
            String msg = allError.getDefaultMessage();
            errors.put(code, msg);
        }
        throw new ParamIllegalException(ResultCode.PARAM_ILLEGAL, errors);
    }

    /**
     * 查询所有必修课成绩信息
     *
     * @param request  请求参数
     * @param term     学年
     * @param semester 学期
     * @return 返回选课信息
     */
    @GetMapping("/queryAllScore.action")
    @StudentOptLog("查询必修课成绩")
    public List<Stucourse> query(HttpServletRequest request, String term, String semester) {
        // 从session中获取stuId
        Student student = (Student) request.getSession().getAttribute("STUDENT_SESSION");
        Integer stuId = student.getId();

        return stucourseService.queryAllScore(stuId, term, semester);
    }

    /**
     * 查询所有选修修课成绩信息
     *
     * @param request  请求参数
     * @param term     学年
     * @param semester 学期
     * @return 返回选课信息
     */
    @GetMapping("/queryAllOptScore.action")
    @StudentOptLog("查询选修课成绩")
    public List<Stucourse> queryopt(HttpServletRequest request, String term, String semester) {
        // 从session中获取stuId
        Student student = (Student) request.getSession().getAttribute("STUDENT_SESSION");
        Integer stuId = student.getId();

        return stucourseService.queryAllOptScore(stuId, term, semester);
    }

    /**
     * 查询该学期可选课程
     *
     * @param request  请求
     * @param kind     课程类型
     * @param semester 学期
     * @param term     学年
     * @return 课程列表
     */
    @GetMapping("/queryAllCourse.action")
    @StudentOptLog("查询该学期可选课程")
    public List<Optcourse> queryallopt(String kind, String semester, String term) {
        return optcourseService.queryAllCourse(kind, semester, term);
    }

    /**
     * 实现选课
     *
     * @param request  请求参数
     * @param courseId 课程号
     * @return 返回选课成功信息
     */
    @PostMapping("/chooseCourse.action")
    @StudentOptLog("提交选课")
    public R insert(HttpServletRequest request, Integer courseId) {
        // 从session中获取stuId
        Student student = (Student) request.getSession().getAttribute("STUDENT_SESSION");
        Integer stuId = student.getId();

        stucourseService.chooseCourse(stuId, courseId);
        return R.of(ResultCode.SUCCESS);
    }

    /**
     * 实现退课
     *
     * @param request  请求参数
     * @param courseId 课程id
     * @return 返回退课成功信息
     */
    @DeleteMapping("/deleteCourse.action/{courseId}")
    @StudentOptLog("申请退课")
    public R delete(HttpServletRequest request, @PathVariable("courseId") Integer courseId) {
        // 从session中获取stuId
        Student student = (Student) request.getSession().getAttribute("STUDENT_SESSION");
        Integer stuId = student.getId();

        stucourseService.deleteCourse(stuId, courseId);
        return R.of(ResultCode.SUCCESS);
    }

    /**
     * 更新用户信息
     *
     * @param student 学生信息
     * @param br 错误信息
     * @return 更新用户信息
     */
    @PostMapping("/updateInfo.action")
    @StudentOptLog("修改个人信息")
    public R updateInfo(@RequestBody @Valid Student student, BindingResult br) {
        List<ObjectError> allErrors = br.getAllErrors();
        if (allErrors.size() > 0) {
            validData(allErrors);
        } else {
            studentService.updateInfo(student);
        }
        return R.of(ResultCode.SUCCESS);
    }
}