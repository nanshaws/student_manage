package cn.student.entity;

import java.util.Date;
import java.io.Serializable;

/**
 * (LoginLog)实体类
 *
 * @author SYJ
 * @since 2021-05-07 15:42:31
 */
public class LoginLog implements Serializable {
    private static final long serialVersionUID = -25858989835221074L;
    
    private Integer id;
    /**
    * 登录用户
    */
    private String loginUser;
    /**
    * 登录时间
    */
    private Date loginTime;
    /**
     * 身份
     */
    private String identity;

    public LoginLog(String loginUser, Date loginTime,String identity) {
        this.loginUser = loginUser;
        this.loginTime = loginTime;
        this.identity = identity;
    }


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getLoginUser() {
        return loginUser;
    }

    public void setLoginUser(String loginUser) {
        this.loginUser = loginUser;
    }

    public Date getLoginTime() {
        return loginTime;
    }

    public void setLoginTime(Date loginTime) {
        this.loginTime = loginTime;
    }

    public String getIdentity() {
        return identity;
    }

    public void setIdentity(String identity) {
        this.identity = identity;
    }
}