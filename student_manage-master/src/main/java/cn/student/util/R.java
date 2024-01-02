package cn.student.util;

import java.util.Map;

public class R {
    /**
     * 编码
     */
    private Integer code;
    /**
     * 附加信息
     */
    private String msg;
    /**
     * 其他信息
     */
    private Map<String, String> otherMsg;

    public R() {
    }

    public R(Integer code, String msg) {
        this.code = code;
        this.msg = msg;
    }

    public static R of(cn.student.util.ResultCode resultCode) {
        return new R(resultCode.getCode(), resultCode.getMsg());
    }

    public static R of(int code, String msg) {
        return new R(code, msg);
    }

    public Integer getCode() {
        return code;
    }

    public void setCode(Integer code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public Map<String, String> getOtherMsg() {
        return otherMsg;
    }

    public void setOtherMsg(Map<String, String> otherMsg) {
        this.otherMsg = otherMsg;
    }
}
