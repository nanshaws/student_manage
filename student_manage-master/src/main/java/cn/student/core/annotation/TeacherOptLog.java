package cn.student.core.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * 教师及管理员操作日志注解
 *
 * @author SYJ
 * @since 2021/5/7 16:22
 */
@Target(ElementType.METHOD)
@Retention(RetentionPolicy.RUNTIME)
public @interface TeacherOptLog {
    String value();
}