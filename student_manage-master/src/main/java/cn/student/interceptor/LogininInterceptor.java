package cn.student.interceptor;

import cn.student.entity.Student;
import cn.student.entity.Teacher;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * 登录拦截器
 *
 * @author CYL
 * @since 2021/4/10 17:00
 */

public class LogininInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        // 获取请求的URL
        String url = request.getRequestURI();

        if (url.contains("/img/") || url.contains("/css/") || url.contains("/js/")) {
            //放行
            return true;
        }

        // 拦截除登录外所有请求
        if (url.contains("/student") || url.contains("/teacher")) {
            return true;
        }
        HttpSession session = request.getSession();
        Student student = (Student) session.getAttribute("STUDENT_SESSION");
        Teacher teacher = (Teacher) session.getAttribute("TEACHER_SESSION");

        if (student != null || teacher != null) {
            return true;
        }

        request.setAttribute("msg", "您还没有登录，请先登录！");
        request.getRequestDispatcher("/WEB-INF/page/login.jsp").forward(request, response);

        return false;
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {

    }
}
