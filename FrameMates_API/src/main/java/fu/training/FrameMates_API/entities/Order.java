package fu.training.FrameMates_API.entities;
import java.io.Serializable;
import java.util.Set;

import jakarta.persistence.*;
import jakarta.transaction.Transactional;

import com.fasterxml.jackson.databind.annotation.JsonSerialize;
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
@Table(name="`Order`")
public class Order implements Serializable {
	private static final long serialVersionUID = 6529685098267757690L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="OrderId")
	private Integer orderId;
	
	@Column(name="OrderDate")
	private java.sql.Timestamp orderDate;
	
	@Column(name="Status")
	private Integer status;
	
	@Column(name="Description", length=Integer.MAX_VALUE)
	private String description;
	
	@Column(name="CheckIn")
	private java.sql.Timestamp checkIn;
	
	@Column(name="PaymentDate")
	private java.sql.Timestamp paymentDate;
	
	@Column(name="Deposit")
	private Integer deposit;
	
	@Column(name="Address", length=Integer.MAX_VALUE)
	private String address;

	@ManyToOne(targetEntity=Customer.class, fetch=FetchType.LAZY)
	@JoinColumn(name="CustomerId", referencedColumnName="CustomerId")
	private Customer customer;

	@ManyToOne(targetEntity= Payment.class, fetch=FetchType.LAZY)
	@JoinColumn(name="PaymentId", referencedColumnName="PaymentId")
	private Payment payment;

	@OneToMany(mappedBy="order", cascade = CascadeType.ALL, fetch = FetchType.LAZY, targetEntity= OrderDetail.class)
	private Set<OrderDetail> order_OrderDetail;
	
	@OneToMany(mappedBy="order", cascade = CascadeType.ALL, fetch = FetchType.LAZY, targetEntity= VoucherDetail.class)
	private Set<VoucherDetail> order_VoucherDetail;
}
