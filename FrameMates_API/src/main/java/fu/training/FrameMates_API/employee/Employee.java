package fu.training.FrameMates_API.employee;

import fu.training.FrameMates_API.comment.Comment;
import fu.training.FrameMates_API.channel.Channel;
import fu.training.FrameMates_API.account.Account;
import java.io.Serializable;
import java.util.Set;

import jakarta.persistence.*;
import jakarta.transaction.Transactional;

import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import fu.training.FrameMates_API.payment.Payment;
import fu.training.FrameMates_API.studio.Studio;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
//@ToString
@Entity
@Transactional
@JsonSerialize
@Table(name="Employee")
public class Employee implements Serializable {
	private static final long serialVersionUID = 6529685098267757690L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="EmployeeId")
	private Integer employeeId;
	
	@Column(name="Status")
	private Integer status;
	
	@ManyToOne(targetEntity= Studio.class, fetch=FetchType.LAZY)
	@JoinColumn(name="StudioId", referencedColumnName="StudioId")
	private Studio studio;

	@OneToOne(targetEntity=Account.class, fetch=FetchType.LAZY, cascade = CascadeType.PERSIST)
	@JoinColumn(name="AccountId", referencedColumnName="AccountId", nullable=false)
	private Account account;

	@OneToOne(mappedBy = "owner", fetch=FetchType.EAGER)
	private Studio owner;

	@OneToOne(mappedBy = "subAdminStudio")
	private Studio subAdminStudio;

	@OneToMany(mappedBy="employee", cascade = CascadeType.ALL, fetch = FetchType.LAZY, targetEntity=Comment.class)
	private Set<Comment> employee_Comment;
	
	@OneToMany(mappedBy="employee", cascade = CascadeType.ALL, fetch = FetchType.LAZY, targetEntity=Channel.class)
	private Set<Channel> employee_Channel;
	
	@OneToMany(mappedBy="employee", cascade = CascadeType.ALL, fetch = FetchType.LAZY, targetEntity= Payment.class)
	private Set<Payment> employee_payment;

}
