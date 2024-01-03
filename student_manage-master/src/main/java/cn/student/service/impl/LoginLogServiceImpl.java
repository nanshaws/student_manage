package cn.student.service.impl;

import cn.student.entity.LoginLog;
import cn.student.dao.LoginLogDao;
import cn.student.service.LoginLogService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * (LoginLog)表服务实现类
 *
 * @author CYL
 * @since 2021-05-07 15:42:31
 */
@Service("loginLogService")
public class LoginLogServiceImpl implements LoginLogService {
    @Resource
    private LoginLogDao loginLogDao;

    @Override
    public void insert(LoginLog loginLog) {
        loginLogDao.insert(loginLog);
    }
}