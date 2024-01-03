package cn.student.core.realm;

import cn.student.core.UsernamePasswordByUserTypeToken;
import cn.student.service.TeacherService;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;

import javax.annotation.Resource;

/**
 * 自定义TeacherRealm
 *
 * @author CYL
 * @since 2021/5/16 12:08
 */
public class TeacherRealm  extends AuthorizingRealm {

    @Resource
    private TeacherService teacherService;

    /**
     * 授权
     *
     * @param principal 用户
     * @return SimpleAuthorizationInfo()
     */
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principal) {
        return null;
    }

    /**
     * 认证
     *
     * @param token 用户token
     * @return SimpleAuthenticationInfo()
     * @throws AuthenticationException 认证异常
     */
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
        // 获取登录的账号
        UsernamePasswordByUserTypeToken mytoken = (UsernamePasswordByUserTypeToken) token;


        return new SimpleAuthenticationInfo();
    }
}
