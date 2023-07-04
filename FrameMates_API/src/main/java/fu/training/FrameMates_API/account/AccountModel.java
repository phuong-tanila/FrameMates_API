package fu.training.FrameMates_API.account;

import fu.training.FrameMates_API.share.validators.phone_validator.Phone;
import jakarta.validation.constraints.*;
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
    @Size(min = 5, max = 12)
    @NotBlank
    private String username;
    @Size(min = 5, max = 100)
    @NotBlank
    private String fullName;
    @Email(regexp = "(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*|\"(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21\\x23-\\x5b\\x5d-\\x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])*\")@(?:(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\\[(?:(?:(2(5[0-5]|[0-4][0-9])|1[0-9][0-9]|[1-9]?[0-9]))\\.){3}(?:(2(5[0-5]|[0-4][0-9])|1[0-9][0-9]|[1-9]?[0-9])|[a-z0-9-]*[a-z0-9]:(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21-\\x5a\\x53-\\x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])+)\\])")
    @NotBlank
    private String email;
    @Phone
    private String phone;
    @NotBlank
    private String avatar;
    private String role;
    @Size(min = 8, max = 20)
    @NotBlank
    private String password;
    private EmployeeModel employee;
    private CustomerModel customer;
    private AdministratorModel administrator;

}
