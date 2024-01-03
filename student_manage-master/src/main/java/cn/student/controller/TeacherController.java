package cn.student.controller;

import cn.student.core.annotation.TeacherOptLog;
import cn.student.entity.Student;
import cn.student.entity.Teacher;
import cn.student.exception.ParamIllegalException;
import cn.student.service.StucourseService;
import cn.student.service.TeacherService;
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
 * (Teacher)表控制层
 *
 * @author CYL
 * @since 2021-04-02 20:12:38
 */
@RestController
@Slf4j
@RequestMapping("/teacher")
public class TeacherController {
    /**
     * 服务对象
     */
    @Resource
    private TeacherService teacherService;

    @Resource
    private StucourseService stucourseService;

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
     * 更新用户信息
     *
     * @param teacher 教师信息
     * @param br 错误信息
     * @return 返回更新成功
     */
    @PostMapping("/updateInfo.action")
    @TeacherOptLog("修改个人信息")
    public R updateinfo(@RequestBody @Valid Teacher teacher, BindingResult br) {
        List<ObjectError> allErrors = br.getAllErrors();
        if (allErrors.size() > 0) {
            validData(allErrors);
        } else {
            teacherService.updateInfo(teacher);
        }
        return R.of(ResultCode.SUCCESS);
    }

    /**
     * 查询选该课程的学生
     *
     * @param request 请求
     * @return 返回学生信息列表
     */
    @GetMapping("/queryChooseStudent.action")
    @TeacherOptLog("获取选课学生")
    public List<Student> queryChooseStudent(HttpServletRequest request) {
        Teacher teacher = (Teacher) request.getSession().getAttribute("TEACHER_SESSION");
        Integer teaId = teacher.getId();

        return teacherService.queryChooseStudent(teaId);
    }

    /**
     * 成绩登记
     *
     * @param request 请求
     * @return 成绩登记成功
     */
    @PostMapping("/assignScore.action")
    @TeacherOptLog("登记成绩")
    public R assignScore(HttpServletRequest request, Integer score, Integer stuId) {
        Teacher teacher = (Teacher) request.getSession().getAttribute("TEACHER_SESSION");
        Integer courseId = teacher.getOptcourse().getId();

        stucourseService.assignScore(score, stuId, courseId);

        return R.of(ResultCode.SUCCESS);
    }
}