package cn.student.service;

import cn.student.entity.LoginLog;

/**
 * (LoginLog)表服务接口
 *
 * @author CYL
 * @since 2021-05-07 15:42:31
 */
public interface LoginLogService {

    /**
     * 记录用户登录日志
     *
     * @param loginLog 登录日志对象
     */
    void insert(LoginLog loginLog);

}