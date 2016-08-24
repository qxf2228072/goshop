package feng.xueqin.common.model;

import org.springframework.context.i18n.LocaleContextHolder;

import java.util.ResourceBundle;

/**
 * 要从将错误信息国际化,将错误信息放入i18n中的errors中 .
 * 1、使用BusinessException(String errorMessage)直接返回错误信息 .
 * 2、使用BusinessException(int errorCode)读取配置文件再返回错误信息 .
 * @author peak .
 */
public class BusinessException extends RuntimeException {
    /**
	 * 
	 */
	private static final long serialVersionUID = 2148374270769534530L;
	
	/**
	 * 是否要从将错误信息国际化要考虑 .
	 */
	private static final String ERROR_BUNDLE = "i18n/errors";

	/**
     * 错误代码,默认为未知错误 .
     */
	protected int errorCode = 0;

    /**
     * 错误信息中的参数 .
     */
    protected String[] errorArgs = null;

    /**
     * 兼容纯错误信息，不含error code,errorArgs的情况 .
     */
    protected String errorMessage = null;
    
    /**
	 * errCode.
	 */
	private String errCode;

	/**
	 * errMsg .
	 */
	private String errMsg;

    /**
     * 错误信息的i18n ResourceBundle .
     */
    final static protected ResourceBundle rb = ResourceBundle.getBundle(ERROR_BUNDLE, LocaleContextHolder.getLocale());
    /**
     * 构造方法 .
     */
    public BusinessException() {
        super();
    }
    /**
     * 
     * @param message .
     * @param cause .
     */
	public BusinessException(String message, Throwable cause) {
		super(message, cause);
	}
	/**
	 * @param errorCode .
	 */
	public BusinessException(int errorCode) {
		this.errorCode = errorCode;
	}
	/**
	 *@param errorMessage .
	 */
    public BusinessException(String errorMessage) {
    	super(errorMessage);
    	this.errMsg=errorMessage;
    }

    /**
     * 获得出错信息.
     * 读取i18N properties文件中Error Code对应的message,并组合参数获得i18n的出错信息.
     * @return string .
     */
    @Override
    public String getMessage() {
        /*//如果errorMessage不为空,直接返回出错信息.
        if (errorMessage != null) {
            return errorMessage;
        }
        //否则用errorCode查询Properties文件获得出错信息
        String message;
        try {
            message = rb.getString(String.valueOf(errorCode));
        }
        catch (MissingResourceException mse) {
            message = "ErrorCode is: " + errorCode + ", but can't get the message of the Error Code";
        }

        //将出错信息中的参数代入到出错信息中
        if (errorArgs != null)
            message = MessageFormat.format(message, (Object[]) errorArgs);

        return message + ", Error Code is: " + errorCode;*/
    	return super.getMessage();
    }
    /**
     * 
     * @param errCode .
     * @param errMsg .
     */
	public BusinessException(String errCode, String errMsg) {
		super();
		this.errCode = errCode;
		this.errMsg = errMsg;
	}
	 /**
     * 
     * @param errCode .
     * @param errMsg .
     */
	public BusinessException(int errCode, String errMsg) {
		super();
		this.errorCode = errCode;
		this.errorMessage = errMsg;
	}
	public String getErrCode() {
		return errCode;
	}
	public void setErrCode(String errCode) {
		this.errCode = errCode;
	}
	public String getErrMsg() {
		return errMsg;
	}
	public void setErrMsg(String errMsg) {
		this.errMsg = errMsg;
	}
}