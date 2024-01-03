package cn.student.dao;

import cn.student.entity.OptLog;

/**
 * (StudentOptLog)表数据库访问层
 *
 * @author CYL
 * @since 2021-05-07 16:24:19
 */
public interface OptLogDao {

    /**
     * 操作日志记录
     *
     * @param optLog 操作日志对象
     */
    void insert(OptLog optLog);

}