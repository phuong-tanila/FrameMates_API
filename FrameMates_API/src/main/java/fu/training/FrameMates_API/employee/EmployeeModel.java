package fu.training.FrameMates_API.employee;

import fu.training.FrameMates_API.account.Account;
import fu.training.FrameMates_API.account.AccountModel;
import fu.training.FrameMates_API.channel.Channel;
import fu.training.FrameMates_API.comment.Comment;
import fu.training.FrameMates_API.payment.Payment;
import fu.training.FrameMates_API.studio.Studio;
import fu.training.FrameMates_API.studio.StudioModel;
import jakarta.persistence.*;
import lombok.*;

import java.util.Set;

@Data
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class EmployeeModel {

    private Integer employeeId;

    private StudioModel studioModel;

    private Integer status;

    private AccountModel accountModel;

    private StudioModel ownerModel;

//    @OneToOne(mappedBy = "subAdminStudio")
//    private Studio subAdminStudio;
//
//    @OneToMany(mappedBy="employee", cascade = CascadeType.ALL, fetch = FetchType.LAZY, targetEntity= Comment.class)
//    private Set<Comment> employee_Comment;
//
//    @OneToMany(mappedBy="employee", cascade = CascadeType.ALL, fetch = FetchType.LAZY, targetEntity= Channel.class)
//    private Set<Channel> employee_Channel;
//
//    @OneToMany(mappedBy="employee", cascade = CascadeType.ALL, fetch = FetchType.LAZY, targetEntity= Payment.class)
//    private Set<Payment> employee_payment;

}
