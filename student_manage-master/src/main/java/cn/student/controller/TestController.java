package cn.student.controller;

import cn.student.core.annotation.TeacherOptLog;
import cn.student.entity.Optcourse;
import cn.student.entity.Student;
import cn.student.entity.Teacher;
import cn.student.exception.ParamIllegalException;
import cn.student.service.OptcourseService;
import cn.student.service.StudentService;
import cn.student.service.TeacherService;
import cn.student.util.R;
import cn.student.util.ResultCode;
import com.github.pagehelper.PageInfo;
import lombok.extern.slf4j.Slf4j;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.validation.Valid;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@Slf4j
@RequestMapping("/man")
public class TestController {
    @GetMapping("hello")
    public String sayHello(){
        return "hello";
    }

    @Resource
    private TeacherService teacherService;

    @Resource
    private StudentService studentService;

    @Resource
    private OptcourseService optcourseService;

    /**
     * @param page 当前页数
     * @return 获得所有学生信息
     */
    @GetMapping("/getAllStudent.do")
    public PageInfo<Student> getAllStudent(@RequestParam("page") int page, @RequestParam("_") long timestamp) {
        return   studentService.getAllStudent(page);
    }


    /**
     * @param page 当前页数
     * @return 获得所有教师信息
     */
    @GetMapping("/getAllTeacher.do")
    public PageInfo<Teacher> getAllTeacher(@RequestParam(defaultValue = "1") Integer page) {
        return teacherService.getAllTeacher(page);
    }

    /**
     * @param page 当前页数
     * @return 获得所有选修课信息
     */
    @GetMapping("/getAllOptCpurse.do")
    public PageInfo<Optcourse> getAllOptCourse(@RequestParam(defaultValue = "1") Integer page) {
        return optcourseService.getAllOptCourse(page);
    }

    /**
     * 依据学号查询学生信息，用于显示在模态框中
     *
     * @param stuId 学号
     * @return 单个学生信息
     */
    @GetMapping("/getStudentById.do")
    public Student getStudentById(Integer stuId) {
        return studentService.getStudentById(stuId);
    }

    /**
     * 依据工号查询教师信息，用于显示在模态框中
     *
     * @param teaId 教师工号
     * @return 单个教师信息
     */
    @GetMapping("/getTeacherById.do")
    public Teacher getTeacherById(Integer teaId) {
        return teacherService.getTeacherById(teaId);
    }

    /**
     * 依据课程号查询课程信息，用于显示在模态框中
     *
     * @param optcourseId 课程号
     * @return 单个课程信息
     */
    @GetMapping("/getOptCourseById.do")
    public Optcourse getOptCourseById(Integer optcourseId) {
        return optcourseService.getOptCourseById(optcourseId);
    }

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
     * 管理员修改教师信息
     *
     * @param teacher 教师信息
     * @return 返回教师信息修改成功
     */
    @PostMapping("/modifyTeacherInfo.do")
    @TeacherOptLog("修改教师信息")
    public R modifyTeacherInfo(@RequestBody @Valid Teacher teacher, BindingResult br) {
        List<ObjectError> allErrors = br.getAllErrors();
        if (allErrors.size() > 0) {
            validData(allErrors);
        } else {
            teacherService.modifyTeacherInfo(teacher);
        }
        return R.of(ResultCode.SUCCESS);
    }

    /**
     * 管理员删除教师信息
     *
     * @param teaId 教师工号
     * @return 返回信息删除成功
     */
    @DeleteMapping("/deleteTeacherInfo.do/{teaId}")
    @TeacherOptLog("删除教师信息")
    public R deleteTeacherInfo(@PathVariable("teaId") Integer teaId) {
        teacherService.deleteTeacherInfo(teaId);
        return R.of(ResultCode.SUCCESS);
    }

    /**
     * 管理员录入教师信息
     *
     * @param teacher 教师信息
     * @return 返回教师信息上传成功
     */
    @PostMapping("/addTeacherInfo.do")
    @TeacherOptLog("录入教师信息")
    public R addTeacherInfo(@RequestBody @Valid Teacher teacher, BindingResult br) {
        List<ObjectError> allErrors = br.getAllErrors();
        if (allErrors.size() > 0) {
            validData(allErrors);
        } else {
            teacherService.addTeacherInfo(teacher);
        }
        return R.of(ResultCode.SUCCESS);
    }

    /**
     * 管理员修改学生信息
     *
     * @param student 学生信息
     * @return 返回学生信息修改成功
     */
    @PostMapping("/modifyStudentInfo.do")
    @TeacherOptLog("修改学生信息")
    public R modifyStudentInfo(@RequestBody @Valid Student student, BindingResult br) {
        List<ObjectError> allErrors = br.getAllErrors();
        if (allErrors.size() > 0) {
            validData(allErrors);
        } else {
            studentService.modifyStudentInfo(student);
        }
        return R.of(ResultCode.SUCCESS);
    }

    /**
     * 管理员删除学生信息
     *
     * @param stuId 学号
     * @return 返回学生信息删除成功
     */
    @DeleteMapping("/deleteStudentInfo.do/{stuId}")
    @TeacherOptLog("删除学生信息")
    public R deleteStudentInfo(@PathVariable("stuId") Integer stuId) {
        studentService.deleteStudentInfo(stuId);
        return R.of(ResultCode.SUCCESS);
    }

    /**
     * 管理员录入学生信息
     *
     * @param student 学生信息
     * @return 返回学生信息录入成功
     */
    @PostMapping("/addStudentInfo.do")
    @TeacherOptLog("录入学生信息")
    public R addStudentInfo(@RequestBody @Valid Student student, BindingResult br) {
        List<ObjectError> allErrors = br.getAllErrors();
        if (allErrors.size() > 0) {
            validData(allErrors);
        } else {
            studentService.addStudentInfo(student);
        }
        return R.of(ResultCode.SUCCESS);
    }

    /**
     * 管理员修改课程信息
     *
     * @param optcourse 课程信息
     * @return 返回修改课程信息成功
     */
    @PostMapping("/modifyOptCourseInfo.do")
    @TeacherOptLog("修改课程信息")
    public R modifyOptCourseInfo(@RequestBody @Valid Optcourse optcourse, BindingResult br) {
        List<ObjectError> allErrors = br.getAllErrors();
        if (allErrors.size() > 0) {
            validData(allErrors);
        } else {
            optcourseService.modifyOptCourseInfo(optcourse);
        }
        return R.of(ResultCode.SUCCESS);
    }

    /**
     * 管理员删除课程信息
     *
     * @param optcourseId 课程号
     * @return 返回删除课程信息成功
     */
    @DeleteMapping("/deleteOptCourseInfo.do/{optcourseId}")
    @TeacherOptLog("删除课程信息")
    public R deleteOptCourseInfo(@PathVariable("optcourseId") Integer optcourseId) {
        optcourseService.deleteOptCourseInfo(optcourseId);
        return R.of(ResultCode.SUCCESS);
    }

    /**
     * 管理员录入课程信息
     *
     * @param optcourse 课程信息
     * @return 返回录入课程信息成功
     */
    @PostMapping("/addOptCourseInfo.do")
    @TeacherOptLog("录入课程信息")
    public R addOptCourseInfo(@RequestBody @Valid Optcourse optcourse, BindingResult br) {
        List<ObjectError> allErrors = br.getAllErrors();
        if (allErrors.size() > 0) {
            validData(allErrors);
        } else {
            optcourseService.addOptCourseInfo(optcourse);
        }
        return R.of(ResultCode.SUCCESS);
    }
}
