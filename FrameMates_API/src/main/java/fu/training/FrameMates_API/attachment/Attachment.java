package fu.training.FrameMates_API.attachment;
import java.io.Serializable;

import jakarta.persistence.*;
import jakarta.transaction.Transactional;

import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import fu.training.FrameMates_API.orderdetail.OrderDetail;
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
@Table(name="Attachment")
public class Attachment implements Serializable {
	private static final long serialVersionUID = 6529685098267757690L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="AttachId")
	private Integer attachId;
	
	@Column(name="AttachPath", length=Integer.MAX_VALUE)
	private String attachPath;
	
	@ManyToOne(targetEntity= OrderDetail.class, fetch=FetchType.LAZY)
	@JoinColumn(name="OrderDetailId", referencedColumnName="OrderDetailId")
	private OrderDetail orderDetail;
}
