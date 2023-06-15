package fu.training.FrameMates_API.voucher;
import fu.training.FrameMates_API.studio.Studio;
import fu.training.FrameMates_API.administrator.Administrator;
import java.io.Serializable;
import java.util.Set;

import jakarta.persistence.*;
import jakarta.transaction.Transactional;

import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import fu.training.FrameMates_API.voucherwallet.VoucherWallet;
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
@Table(name="Voucher")
public class Voucher implements Serializable {
	private static final long serialVersionUID = 6529685098267757690L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="VoucherId")
	private Integer voucherId;
	
	@Column(name="CreateDate")
	private java.sql.Timestamp createDate;
	
	@Column(name="EffectiveDate")
	private java.sql.Timestamp effectiveDate;
	
	@Column(name="ExpirationDate")
	private java.sql.Timestamp expirationDate;
	
	@Column(name="Code")
	private String code;
	
	@Column(name="Description", length = Integer.MAX_VALUE)
	private String description;
	
	@Column(name="Quantity")
	private Integer quantity;
	
	@Column(name="AvailableQuantity")
	private Integer availableQuantity;
	
	@ManyToOne(targetEntity=Studio.class, fetch=FetchType.LAZY)
	@JoinColumn(name="StudioId", referencedColumnName="StudioId")
	private Studio studio;
	
	@ManyToOne(targetEntity=Administrator.class, fetch=FetchType.LAZY)
	@JoinColumn(name="AdminId", referencedColumnName="AdminId")
	private Administrator admin;
	
	@OneToMany(mappedBy="voucher", cascade = CascadeType.ALL, fetch = FetchType.LAZY, targetEntity= VoucherWallet.class)
	private Set<VoucherWallet> voucher_VoucherWallet;
}
