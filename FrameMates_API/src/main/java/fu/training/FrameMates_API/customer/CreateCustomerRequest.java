package fu.training.FrameMates_API.customer;

import lombok.Getter;
import lombok.Setter;

import java.util.Date;

@Getter
@Setter
public class CreateCustomerRequest {
    private String address;
    private Date birthDate;
}
