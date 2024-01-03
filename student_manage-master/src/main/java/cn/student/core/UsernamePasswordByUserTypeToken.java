package cn.student.core;

import org.apache.shiro.authc.UsernamePasswordToken;

/**
 * 自定义UsernamePasswordToken
 *
 * @author CYL
 * @since 2021/5/16 12:01
 */
public class UsernamePasswordByUserTypeToken extends UsernamePasswordToken {
    private String userType;

    public String getUserType() {
        return userType;
    }

    public void setUserType(String userType) {
        this.userType = userType;
    }

    public UsernamePasswordByUserTypeToken(String username, String password, String userType) {
        super(username, password);
        this.userType = userType;
    }
}
