package fu.training.FrameMates_API.payment;
import fu.training.FrameMates_API.order.Order;
import fu.training.FrameMates_API.employee.Employee;
import fu.training.FrameMates_API.customer.Customer;
import java.io.Serializable;
import java.util.Set;

import jakarta.persistence.*;
import jakarta.transaction.Transactional;

import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import fu.training.FrameMates_API.transaction.Transaction;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
@Entity
@Transactional
@JsonSerialize
@Table(name="Payment")
public class Payment implements Serializable {
	private static final long serialVersionUID = 6529685098267757690L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="PaymentId")
	private Integer paymentId;
	
	@Column(name="Method")
	private String method;
	
	@ManyToOne(targetEntity=Customer.class, fetch=FetchType.LAZY)
	@JoinColumn(name="CustomerId", referencedColumnName="CustomerId")
	private Customer customer;
	
	@ManyToOne(targetEntity=Employee.class, fetch=FetchType.LAZY)
	@JoinColumn(name="EmployeeId", referencedColumnName="EmployeeId")
	private Employee employee;
	
	@OneToMany(mappedBy="payment", cascade = CascadeType.ALL, fetch = FetchType.LAZY, targetEntity=Order.class)
	private Set<Order> payment_Order;
	
	@OneToMany(mappedBy="payment", cascade = CascadeType.ALL, fetch = FetchType.LAZY, targetEntity= Transaction.class)
	private Set<Transaction> payment_Transaction;
}
