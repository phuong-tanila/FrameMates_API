package fu.training.FrameMates_API.share.exceptions;

import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.HttpRequestMethodNotSupportedException;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestControllerAdvice;
import org.springframework.web.client.HttpClientErrorException;
import org.springframework.web.context.request.WebRequest;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@RestControllerAdvice
//@Configuration
public class ApiExceptionHandler {
    @ExceptionHandler(RecordNotFoundException.class)
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

    @ExceptionHandler(DupplicatedUserInfoException.class)
    public ResponseEntity<ExceptionResponse> handleDuppicatedUserInfoExceptionException(
            DupplicatedUserInfoException ex, WebRequest request
    ){
//        List<String>  messages = new ObjectMapper().convertValue(ex.getMessage(), ArrayList.class);
        return new ResponseEntity<ExceptionResponse>(
                new ExceptionResponse(
                        "Dupplicated user info exception",
                        ex.getMessages()
                ),
                HttpStatus.NOT_FOUND
        );
    }

    @ExceptionHandler(MethodArgumentNotValidException.class)
    public ResponseEntity<ExceptionResponse> handleMethodArgumentNotValid(
            MethodArgumentNotValidException ex, WebRequest request
    ){
        List<String> messages = ex.getBindingResult().getFieldErrors()
                .stream()
                .map(x -> x.getField() + ": " + x.getDefaultMessage())
                .collect(Collectors.toList());

        return new ResponseEntity<ExceptionResponse>(
                new ExceptionResponse(
                        "Invalid argument",
                        messages.toArray(new String[0])
                ),
                HttpStatus.BAD_REQUEST
        );
    }

//    @ExceptionHandler(Exception.class)
//    public ResponseEntity<ExceptionResponse> handleException(
//            Exception ex, WebRequest request
//    ){
//
//        return new ResponseEntity<ExceptionResponse>(
//                new ExceptionResponse(
//                        "Exception",
//                    ex.getMessage()
//                ),
//                HttpStatus.BAD_REQUEST
//        );
//    }


    @ExceptionHandler(HttpClientErrorException.MethodNotAllowed.class)
    @ResponseStatus(HttpStatus.BAD_REQUEST)
    public String  handleMethodArgumentNotAllowed(
            HttpRequestMethodNotSupportedException ex,
            HttpHeaders headers, HttpStatus status, WebRequest request
    ){
        return "123";
    }
}
