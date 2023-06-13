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
@Table(name="OrderDetail")
public class OrderDetail implements Serializable {
	private static final long serialVersionUID = 6529685098267757690L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="OrderDetailId")
	private Integer orderDetailId;

	@Column(name="Price")
	private Integer price;
	
	@Column(name="Discount")
	private Integer discount;
	
	@Column(name="Rating")
	private Integer rating;
	
	@Column(name="Content", length=Integer.MAX_VALUE)
	private String content;
	
	@Column(name="PostDate")
	private java.sql.Timestamp postDate;

	@ManyToOne(targetEntity= ServicePack.class, fetch=FetchType.LAZY)
	@JoinColumn(name="ServiceId", referencedColumnName="ServiceId")
	private ServicePack servicePack;

	@ManyToOne(targetEntity=Order.class, fetch=FetchType.LAZY)
	@JoinColumn(name="OrderId", referencedColumnName="OrderId")
	private Order order;

	@OneToMany(mappedBy="orderDetail", cascade = CascadeType.ALL, fetch = FetchType.LAZY, targetEntity=Attachment.class)
	private Set<Attachment> orderDetail_Attachment;

	@ManyToOne(targetEntity=ComboService.class, fetch=FetchType.LAZY)
	@JoinColumn(name="ComboServiceId", referencedColumnName="ComboId")
	private ComboService comboService;
}
