package fu.training.FrameMates_API.transaction;
import fu.training.FrameMates_API.studio.Studio;
import fu.training.FrameMates_API.payment.Payment;
import java.io.Serializable;

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
@Table(name="`Transaction`")
public class Transaction implements Serializable {
	private static final long serialVersionUID = 6529685098267757690L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="TransactionId")
	private Integer transactionId;
	
	@Column(name="CreateDate")
	private java.sql.Timestamp createDate;
	
	@Column(name="Amount")
	private Integer amount;
	
	@Column(name="TransactionType")
	private Boolean transactionType;
	
	@Column(name="Status")
	private Integer status;
	
	@ManyToOne(targetEntity=Studio.class, fetch=FetchType.LAZY)
	@JoinColumn(name="StudioId", referencedColumnName="StudioId")
	private Studio studio;
	
	@ManyToOne(targetEntity=Payment.class, fetch=FetchType.LAZY)
	@JoinColumn(name="PaymentId", referencedColumnName="PaymentId")
	private Payment payment;
}
