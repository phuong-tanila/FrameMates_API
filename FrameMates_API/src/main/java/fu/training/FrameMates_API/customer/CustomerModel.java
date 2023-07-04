package fu.training.FrameMates_API.customer;

import fu.training.FrameMates_API.account.AccountModel;
import jakarta.validation.Valid;
import lombok.Data;

@Data
public class CustomerModel {
    private Integer customerId;

    private java.util.Date birthDate;
    private java.sql.Timestamp createDate;
    private Integer status;
    private String address;
    @Valid
    private AccountModel accountModel;
}
