package cn.student.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 用于页面跳转
 *
 * @author SYJ
 * @since 2021/4/15 15:07
 */
@Controller
public class PageJump {

    /**
     *
     * @return 跳转到登录界面
     */
    @RequestMapping("/tologin")
    public String tologin(){
        return "login";
    }

    /**
     *
     * @return 跳转到欢迎界面
     */
    @RequestMapping("/towelcome")
    public String towelcome(){
        return "welcome";
    }

    // 学生相关界面跳转

    /**
     *
     * @return 跳转到必修课成绩查询界面
     */
    @RequestMapping("/toscore")
    public String toscore(){
        return "score";
    }

    /**
     *
     * @return 跳转到选修课成绩查询界面
     */
    @RequestMapping("/tooptscore")
    public String tooptscore(){
        return "optscore";
    }

    /**
     *
     * @return 跳转到学生信息界面
     */
    @RequestMapping("/tostuinfo")
    public String tostuinfo(){
        return "stuinfo";
    }


    /**
     *
     * @return 跳转到选课界面
     */
    @RequestMapping("/toscourse")
    public String toscourse(){
        return "scourse";
    }

    /**
     *
     * @return 跳转到退课界面
     */
    @RequestMapping("/todcourse")
    public String todcourse(){
        return "dcourse";
    }

    // 教师相关界面跳转

    /**
     *
     * @return 跳转到教师信息界面
     */
    @RequestMapping("/toteainfo")
    public String toteainfo(){
        return "teainfo";
    }

    /**
     *
     * @return 跳转到选课详情界面
     */
    @RequestMapping("/tocdetail")
    public String tocdetail(){
        return "cdetail";
    }

    /**
     *
     * @return 跳转到成绩登记界面
     */
    @RequestMapping("/toassignscore")
    public String toassignscore(){
        return "assignscore";
    }

    // 管理员相关界面跳转

    /**
     *
     * @return 跳转到学生信息管理界面
     */
    @RequestMapping("/tomanagestudent")
    public String tomanagestudent(){
        return "managestudent";
    }

    /**
     *
     * @return 跳转到教师信息管理界面
     */
    @RequestMapping("/tomanageteacher")
    public String tomanageteacher(){
        return "manageteacher";
    }

    /**
     *
     * @return 跳转到课程信息管理界面
     */
    @RequestMapping("/tomanagecourse")
    public String tomanagecourse(){
        return "manageoptcourse";
    }
}
