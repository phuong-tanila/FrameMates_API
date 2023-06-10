package fu.training.FrameMates_API.entities;

import java.io.Serializable;
import java.util.Set;



import com.fasterxml.jackson.databind.annotation.JsonSerialize;

import jakarta.persistence.*;
import jakarta.transaction.Transactional;
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
@Table(name="Administrator")
public class Administrator implements Serializable {

	private static final long serialVersionUID = 6529685098267757690L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="AdminId")
	private Integer adminId;
	
	@Column(name="Name", length=Integer.MAX_VALUE)
	private String name;
	
	@Column(name="Email", length=Integer.MAX_VALUE)
	private String email;
	
	@Column(name="Phone")
	private String phone;
	
	@Column(name="Password")
	private String password;
	
	@Column(name="Avatar", length=Integer.MAX_VALUE)
	private String avatar;
	
	@Column(name="Status")
	private Integer status;
	
	@OneToMany(mappedBy="admin", cascade = CascadeType.ALL, fetch = FetchType.LAZY, targetEntity=Customer.class)
	private Set<Customer> admin_customer;
	
	@OneToMany(mappedBy="admin", cascade = CascadeType.ALL, fetch = FetchType.LAZY, targetEntity = Studio.class)
	private Set<Studio> admin_studio;
	
	@OneToMany(mappedBy="admin", cascade = CascadeType.ALL, fetch = FetchType.LAZY, targetEntity = Voucher.class)
	private Set<Voucher> admin_voucher;

}
