package fu.training.FrameMates_API.account;

import fu.training.FrameMates_API.administrator.Administrator;
import fu.training.FrameMates_API.administrator.AdministratorModel;
import fu.training.FrameMates_API.customer.Customer;
import fu.training.FrameMates_API.customer.CustomerModel;
import fu.training.FrameMates_API.employee.Employee;
import fu.training.FrameMates_API.employee.EmployeeModel;
import jakarta.persistence.CascadeType;
import jakarta.persistence.FetchType;
import jakarta.persistence.OneToOne;
import lombok.*;

@Getter @Setter
@RequiredArgsConstructor
@EqualsAndHashCode
public class AccountModel {

    private Integer accountId;
    private String username;
    private String fullName;
    private String email;
    private String phone;
    private String avatar;
    private String role;
    private EmployeeModel employee;
    private CustomerModel customer;
    private AdministratorModel administrator;

}
