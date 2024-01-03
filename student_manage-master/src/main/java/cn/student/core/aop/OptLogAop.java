package cn.student.core.aop;

import cn.student.core.annotation.StudentOptLog;
import cn.student.core.annotation.TeacherOptLog;
import cn.student.entity.Student;
import cn.student.entity.Teacher;
import cn.student.service.OptLogService;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.reflect.MethodSignature;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.annotation.Resource;
import java.util.Date;

/**
 * 操作日志AOP
 *
 * @author CYL
 * @since 2021/5/7 16:21
 */
@Aspect
@Component
public class OptLogAop {

    @Resource
    private OptLogService optLogService;

    /**
     *  学生日志切面
     */
    @Before("@annotation(cn.student.core.annotation.StudentOptLog)")
    public void student(JoinPoint joinPoint) {

        // 拿到注解的内容
        StudentOptLog annotation = ((MethodSignature) joinPoint.getSignature()).getMethod().getAnnotation(StudentOptLog.class);
        String optType = annotation.value();

        ServletRequestAttributes sra = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
        Student student = (Student) sra.getRequest().getSession().getAttribute("STUDENT_SESSION");

        optLogService.insert(new cn.student.entity.OptLog(student.getName(), optType, new Date()));
    }

    @Before("@annotation(cn.student.core.annotation.TeacherOptLog)")
    public void teacher(JoinPoint joinPoint) {

        // 拿到注解的内容
        TeacherOptLog annotation = ((MethodSignature) joinPoint.getSignature()).getMethod().getAnnotation(TeacherOptLog.class);
        String optType = annotation.value();

        ServletRequestAttributes sra = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
        Teacher teacher = (Teacher) sra.getRequest().getSession().getAttribute("TEACHER_SESSION");

        optLogService.insert(new cn.student.entity.OptLog(teacher.getName(), optType, new Date()));
    }

}