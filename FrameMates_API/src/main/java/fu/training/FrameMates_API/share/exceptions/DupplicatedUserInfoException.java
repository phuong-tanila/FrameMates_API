package fu.training.FrameMates_API.share.exceptions;

public class DupplicatedUserInfoException extends Exception{
    private static final long serialVersionUID = 1L;

    private String[] messages;
    public DupplicatedUserInfoException(String... messages) {
        this.messages = messages;
    }

    public String[] getMessages() {
        return this.messages;
    }

    public DupplicatedUserInfoException(String message) {
        super(message);
    }

    public DupplicatedUserInfoException(String message, Throwable t) {
        super(message, t);
    }
}
