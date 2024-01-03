package cn.student.exception;

import cn.student.util.ResultCode;

import java.util.Map;

/**
 * 参数异常
 *
 * @author CYL
 * @since 2021/5/3 10:54
 */
public class ParamIllegalException extends RuntimeException {
    private int code;
    private String msg;
    private Map<String,String> erroes;

    public ParamIllegalException(ResultCode resultCode, Map<String, String> erroes) {
        this.code = resultCode.getCode();
        this.msg = resultCode.getMsg();
        this.erroes = erroes;
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public Map<String, String> getErroes() {
        return erroes;
    }

    public void setErroes(Map<String, String> erroes) {
        this.erroes = erroes;
    }
}
