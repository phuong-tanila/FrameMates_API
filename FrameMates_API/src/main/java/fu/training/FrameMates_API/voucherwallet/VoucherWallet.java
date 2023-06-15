package fu.training.FrameMates_API.voucherwallet;
import fu.training.FrameMates_API.voucherdetail.VoucherDetail;
import fu.training.FrameMates_API.voucher.Voucher;
import fu.training.FrameMates_API.customer.Customer;
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
@Table(name="VoucherWallet")
public class VoucherWallet implements Serializable {
	private static final long serialVersionUID = 6529685098267757690L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="VoucherWalletId")
	private Integer voucherWalletId;

	@Column(name="Quantity")
	private Integer quantity;

	@ManyToOne(targetEntity=Customer.class, fetch=FetchType.LAZY)
	@JoinColumn(name="CustomerId", referencedColumnName="CustomerId")
	private Customer customer;
	
	@ManyToOne(targetEntity=Voucher.class, fetch=FetchType.LAZY)
	@JoinColumn(name="VoucherId", referencedColumnName="VoucherId")
	private Voucher voucher;
	
	@OneToMany(mappedBy="voucherWallet", cascade = CascadeType.ALL, fetch = FetchType.LAZY, targetEntity=VoucherDetail.class)
	private Set<VoucherDetail> voucherWallet_VoucherDetail;
}
