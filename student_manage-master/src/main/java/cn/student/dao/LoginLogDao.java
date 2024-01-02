package cn.student.dao;

import cn.student.entity.LoginLog;

/**
 * (LoginLog)表数据库访问层
 *
 * @author SYJ
 * @since 2021-05-07 15:42:31
 */
public interface LoginLogDao {

    /**
     * 记录用户登录日志
     *
     * @param loginLog 登录日志对象
     */
    void insert(LoginLog loginLog);

}