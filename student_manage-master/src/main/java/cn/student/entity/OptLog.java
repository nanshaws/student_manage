package cn.student.entity;

import java.util.Date;
import java.io.Serializable;

/**
 * (StudentOptLog)实体类
 *
 * @author SYJ
 * @since 2021-05-07 16:24:19
 */
public class OptLog implements Serializable {
    private static final long serialVersionUID = -13469756532964778L;
    
    private Integer id;
    /**
    * 操作用户
    */
    private String optUser;
    /**
    * 操作行为
    */
    private String optMsg;
    /**
    * 操作时间
    */
    private Date optTime;

    public OptLog(String optUser, String optMsg, Date optTime) {
        this.optUser = optUser;
        this.optMsg = optMsg;
        this.optTime = optTime;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getOptUser() {
        return optUser;
    }

    public void setOptUser(String optUser) {
        this.optUser = optUser;
    }

    public String getOptMsg() {
        return optMsg;
    }

    public void setOptMsg(String optMsg) {
        this.optMsg = optMsg;
    }

    public Date getOptTime() {
        return optTime;
    }

    public void setOptTime(Date optTime) {
        this.optTime = optTime;
    }

}