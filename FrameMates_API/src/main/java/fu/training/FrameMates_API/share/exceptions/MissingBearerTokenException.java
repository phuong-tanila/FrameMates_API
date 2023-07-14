package fu.training.FrameMates_API.share.exceptions;

public class MissingBearerTokenException extends RuntimeException{
    public MissingBearerTokenException(String message) {
        super(message);
    }
    public MissingBearerTokenException() {
        super("Bearer token is required");
    }

    public MissingBearerTokenException(String message, Throwable t) {
        super(message, t);
    }
}
