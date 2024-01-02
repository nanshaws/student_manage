package cn.student.exception;

import cn.student.util.R;
import cn.student.util.ResultCode;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * 全局异常处理
 *
 * @author SYJ
 * @since 2021/5/3 10:54
 */
@ControllerAdvice
public class GlobalExceptionResolver {

    /**
     * 处理参数异常
     * @param e 异常
     * @return 返回R
     */
    @ExceptionHandler(ParamIllegalException.class)
    @ResponseBody
    public R paramIllegalExceptionHandler(ParamIllegalException e) {
        e.printStackTrace();
        R r = R.of(e.getCode() , e.getMsg());
        r.setOtherMsg(e.getErroes());
        return r;
    }

    /**
     *     处理所有未知异常
      */
    @ExceptionHandler(Exception.class)
    public R exceptionHandler() {
        return R.of(ResultCode.UNKNOW_ERROR);
    }

}
