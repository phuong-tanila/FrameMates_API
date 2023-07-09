package fu.training.FrameMates_API.payment;

import fu.training.FrameMates_API.customer.CustomerModel;
import fu.training.FrameMates_API.employee.EmployeeModel;
import lombok.Data;

@Data
public class PaymentModel {
    private Integer paymentId;
    private String method;
    private CustomerModel customer;
    private EmployeeModel employee;
}
