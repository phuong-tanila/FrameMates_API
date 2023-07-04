package fu.training.FrameMates_API.share.exceptions;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
//@AllArgsConstructor
public class ExceptionResponse {
    public ExceptionResponse(String exceptionType, String... messages) {
        this.exceptionType = exceptionType + " exception";
        this.messages = messages;
    }
    public String exceptionType;
    public String[] messages;
}
