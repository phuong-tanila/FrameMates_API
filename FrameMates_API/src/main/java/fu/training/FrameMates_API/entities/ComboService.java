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
@Table(name="ComboService")
public class ComboService implements Serializable {
	private static final long serialVersionUID = 6529685098267757690L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="ComboId")
	private Integer comboId;
	
	@Column(name="Name")
	private String name;

	@Column(name="CreateDate")
	private java.sql.Timestamp createDate;
	
	@Column(name="Price")
	private Integer price;
	
	@Column(name="Discount")
	private Integer discount;
	
	@Column(name="Description", length=Integer.MAX_VALUE)
	private String description;
	
	@Column(name="Status")
	private boolean status;
	
	@Column(name="UpdateDate")
	private java.sql.Timestamp updateDate;

	@Column(name="`View`")
	private Integer view;

	@ManyToOne(targetEntity = Employee.class, fetch = FetchType.LAZY)
	@JoinColumn(name="UpdateBy", referencedColumnName = "EmployeeId")
	private Employee updateBy;

	@ManyToOne(targetEntity = Employee.class, fetch = FetchType.LAZY)
	@JoinColumn(name="CreateBy", referencedColumnName = "EmployeeId")
	private Employee createBy;
	
	@ManyToOne(targetEntity= Studio.class, fetch=FetchType.LAZY)
	@JoinColumn(name="StudioId", referencedColumnName="StudioId")
	private Studio studio;
	
	@OneToMany(mappedBy="comboService", cascade = CascadeType.ALL, fetch = FetchType.LAZY, targetEntity=ComboDetail.class)
	private Set<ComboDetail> comboService_comboDetail;
	
	@OneToMany(mappedBy="comboService", cascade = CascadeType.ALL, fetch = FetchType.LAZY, targetEntity= OrderDetail.class)
	private Set<OrderDetail> comboService_orderDetail;

}
