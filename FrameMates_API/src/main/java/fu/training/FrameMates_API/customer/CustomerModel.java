package fu.training.FrameMates_API.customer;


import fu.training.FrameMates_API.account.Account;
import fu.training.FrameMates_API.administrator.Administrator;
import jakarta.persistence.*;
import lombok.Data;

@Data
public class CustomerModel {
    private Integer customerId;
    private java.util.Date birthDate;
    private java.sql.Timestamp createDate;
    private Integer status;
    private String address;
    private Integer adminId;
    private Integer accountId;
}
