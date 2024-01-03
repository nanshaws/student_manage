package cn.student.service.impl;

import cn.student.entity.OptLog;
import cn.student.dao.OptLogDao;
import cn.student.service.OptLogService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * (StudentOptLog)表服务实现类
 *
 * @author CYL
 * @since 2021-05-07 16:24:19
 */
@Service("optLogService")
public class OptLogServiceImpl implements OptLogService {
    @Resource
    private OptLogDao optLogDao;

    /**
     * 操作日志记录
     *
     * @param optLog 实例对象
     */
    @Override
    public void insert(OptLog optLog) {
        optLogDao.insert(optLog);
    }
}