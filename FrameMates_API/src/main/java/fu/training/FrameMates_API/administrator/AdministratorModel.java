package fu.training.FrameMates_API.administrator;


import fu.training.FrameMates_API.account.Account;
import fu.training.FrameMates_API.account.AccountModel;
import jakarta.persistence.Column;
import lombok.Data;

@Data
public class AdministratorModel {

    private Integer adminId;

    private Integer status;
}
