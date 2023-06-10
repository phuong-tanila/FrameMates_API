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
@Table(name="ServicePack")
public class ServicePack implements Serializable {
	private static final long serialVersionUID = 6529685098267757690L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="ServiceId")
	private int serviceId;
	
	@Column(name="Name")
	private String name;
	
	@Column(name="CreateDate")
	private java.sql.Timestamp createDate;
	
	@Column(name="Price")
	private Integer price;
	
	@Column(name="Description", length = Integer.MAX_VALUE)
	private String description;
	
	@Column(name="SoldCount")
	private Integer soldCount = 0;
	
	@Column(name="Status")
	private Integer status;
	
	@Column(name="UpdateDate")
	private java.sql.Timestamp updateDate;

	@Column(name="`View`")
	private Integer view;

	@Column(name="Discount")
	private Integer discount;

	@ManyToOne(targetEntity = Employee.class, fetch = FetchType.LAZY)
	@JoinColumn(name="UpdateBy", referencedColumnName = "EmployeeId")
	private Employee updateBy;

	@ManyToOne(targetEntity = Employee.class, fetch = FetchType.LAZY)
	@JoinColumn(name="CreateBy", referencedColumnName = "EmployeeId")
	private Employee createBy;

	@ManyToOne(targetEntity= Studio.class, fetch=FetchType.LAZY)
	@JoinColumn(name="StudioId", referencedColumnName="StudioId")
	private Studio studio;
	
	@OneToMany(mappedBy="servicePack", cascade = CascadeType.ALL, fetch = FetchType.LAZY, targetEntity=ComboDetail.class)
	private Set<ComboDetail> servicePack_ComboDetail;
	
	@OneToMany(mappedBy="servicePack", cascade = CascadeType.ALL, fetch = FetchType.LAZY, targetEntity=MediaService.class)
	private Set<MediaService> servicePack_mediaService;
	
	@OneToMany(mappedBy="servicePack", cascade = CascadeType.ALL, fetch = FetchType.LAZY, targetEntity=OrderDetail.class)
	private Set<OrderDetail> servicePack_orderDetail;
}
