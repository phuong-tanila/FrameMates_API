package fu.training.FrameMates_API.entities;
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
@Table(name="VoucherDetail")
public class VoucherDetail implements Serializable {
	private static final long serialVersionUID = 6529685098267757690L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="VoucherDetailId")
	private int voucherDetailId;
	
	@ManyToOne(targetEntity= VoucherWallet.class, fetch=FetchType.LAZY)
	@JoinColumn(name="VoucherWalletId", referencedColumnName="VoucherWalletId")
	private VoucherWallet voucherWallet;
	
	@ManyToOne(targetEntity=Order.class, fetch=FetchType.LAZY)
	@JoinColumn(name="OrderId", referencedColumnName="OrderId")
	private Order order;
}
