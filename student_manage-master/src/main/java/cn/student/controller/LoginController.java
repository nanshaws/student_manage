package cn.student.controller;

import cn.student.core.UsernamePasswordByUserTypeToken;
import cn.student.entity.LoginLog;
import cn.student.entity.Student;
import cn.student.entity.Teacher;
import cn.student.service.LoginLogService;
import cn.student.service.StudentService;
import cn.student.service.TeacherService;
import lombok.extern.slf4j.Slf4j;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Date;

/**
 * 实现登录登出
 *
 * @author SYJ
 * @since 2021/4/10 17:00
 */
@Controller
@Slf4j
public class LoginController {

    @Autowired
    private TeacherService teacherService;

    @Autowired
    private StudentService studentService;

    @Autowired
    private LoginLogService loginLogService;

    /**
     * 实现学生登录
     *
     * @param studentid 学号
     * @param password  密码
     * @param model     模型
     * @param session   会话
     * @return 进入student界面
     */
    @RequestMapping("/student.login")
    public String studentlogin(String studentid, String password, Model model, HttpSession session) {

//        UsernamePasswordByUserTypeToken token = new UsernamePasswordByUserTypeToken(studentid,password,"1");
//        Subject user = SecurityUtils.getSubject();
//
//        try {
//            user.login(token);
//            session.setAttribute("session",user.getPrincipal());
//        }catch (UnknownAccountException e){
//            e.printStackTrace();
//        }
//
//        return "student";

        Student student = studentService.queryStudent(studentid);

        if (student != null) {
            // 将用户对象添加到session
            session.setAttribute("STUDENT_SESSION", student);
            model.addAttribute("student", student);

            // 将用户登录信息记录
            loginLogService.insert(new LoginLog(student.getName(), new Date(), "学生"));

            return "student";
        }
        model.addAttribute("msg", "账号或密码错误，请重新输入！");
        // 返回登录界面
        return "login";
    }

    /**
     * 实现教师登录
     *
     * @param teacherid 教师工号
     * @param password  密码
     * @param model     模型
     * @param session   会话
     * @param request   请求
     * @return 进入teacher界面
     */
    @RequestMapping("/teacher.login")
    public String teacherlogin(String teacherid, String password, Model model, HttpSession session, HttpServletRequest request) {

        // 判断是否勾选以管理员方式登录
        String manage;
        if ("1".equals(request.getParameterValues("manager")[0])) {
            manage = "1";
        } else {
            manage = "0";
        }
        model.addAttribute("manage", manage);

        Teacher teacher = teacherService.queryTeacher(teacherid, password, manage);
        if (teacher != null) {
            // 将用户对象添加到session
            session.setAttribute("TEACHER_SESSION", teacher);
            model.addAttribute("teacher", teacher);

            // 将用户登录信息记录
            if (teacher.getManager() == 1) {
                loginLogService.insert(new LoginLog(teacher.getName(), new Date(), "管理员"));
            } else {
                loginLogService.insert(new LoginLog(teacher.getName(), new Date(), "教师"));
            }

            return "teacher";
        }
        model.addAttribute("msg", "账号或密码错误，请重新输入！");

        return "login";
    }


    /**
     * 实现退出登录
     *
     * @param session 会话
     * @return 返回登录界面
     */
    @RequestMapping("/logout.action")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:tologin";
    }
}
