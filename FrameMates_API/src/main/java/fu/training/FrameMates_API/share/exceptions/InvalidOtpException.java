package fu.training.FrameMates_API.share.exceptions;

public class InvalidOtpException extends  Exception{
    private static final long serialVersionUID = 1L;

    public InvalidOtpException(String message) {
        super(message);
    }

    public InvalidOtpException(String message, Throwable t) {
        super(message, t);
    }
}
