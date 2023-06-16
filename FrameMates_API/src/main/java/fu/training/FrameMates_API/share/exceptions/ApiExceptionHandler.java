package fu.training.FrameMates_API.share.exceptions;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.RestControllerAdvice;
import org.springframework.web.context.request.WebRequest;

import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

@RestControllerAdvice
public class ApiExceptionHandler {
    public ResponseEntity<ExceptionResponse> handleRecordNotFoundException(
            RecordNotFoundException ex, WebRequest request
    ){
        return new ResponseEntity<ExceptionResponse>(
                new ExceptionResponse(
                    "Record not found",
                        ex.getMessage()
                ),
                HttpStatus.NOT_FOUND
        );
    }

    public ResponseEntity<ExceptionResponse> handleMethodArgumentNotValid(
            MethodArgumentNotValidException ex, WebRequest request
    ){
        List<String> messages = ex.getBindingResult().getFieldErrors()
                .stream()
                .map(x -> x.getDefaultMessage())
                .collect(Collectors.toList());

        return new ResponseEntity<ExceptionResponse>(
                new ExceptionResponse(
                        "Invalid argument",
                        String.valueOf(messages)
                ),
                HttpStatus.BAD_REQUEST
        );
    }
}
