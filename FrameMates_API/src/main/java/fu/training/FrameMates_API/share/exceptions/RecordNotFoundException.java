package fu.training.FrameMates_API.share.exceptions;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(value = HttpStatus.NOT_FOUND)
public class RecordNotFoundException extends RuntimeException {

	private static final long serialVersionUID = 1L;
	
	public RecordNotFoundException(String message) {
		super(message);
	}
	public RecordNotFoundException() {
		super("Cannot find record that match the specified id");
	}
	
	public RecordNotFoundException(String message, Throwable t) {
		super(message, t);
	}
}
