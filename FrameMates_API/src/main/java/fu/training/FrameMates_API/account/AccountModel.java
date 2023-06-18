package fu.training.FrameMates_API.account;

import lombok.Data;

@Data
public class AccountModel {
    private Integer accountId;
    private String username;
    private String fullName;
    private String email;
    private String phone;
    private String avatar;
    private String role;
}
