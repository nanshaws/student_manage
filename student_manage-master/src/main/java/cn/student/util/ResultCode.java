package cn.student.util;

public enum ResultCode {
    // 成功
    SUCCESS(200, "Success"),

    // 禁止访问
    FORBIDDEN(403, "Forbidden"),

    // 未知错误
    UNKNOW_ERROR(10001, "Unknow Error"),

    // 用户名错误
    USERNAME_ERROR(10002, "UserName Error"),

    // 密码错误
    PASSWORD_ERROR(10003, "Password Error"),

    // 用户名不能为空
    USERNAME_EMPTY(10004, "UserName Not Null"),

    PARAM_ILLEGAL(10005,"Param_Illegal");

    // 结果码
    private Integer code;
    // 结果码描述
    private String msg;

    ResultCode(Integer code, String msg) {
        this.code = code;
        this.msg = msg;
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
}
