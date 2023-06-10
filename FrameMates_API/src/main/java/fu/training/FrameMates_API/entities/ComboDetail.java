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
@Table(name="ComboDetail")
public class ComboDetail implements Serializable {

	private static final long serialVersionUID = 6529685098267757690L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="ComboDetailId")
	private Integer comboDetailId;
	
	@ManyToOne(targetEntity= ServicePack.class, fetch=FetchType.LAZY)
	@JoinColumn(name="ServiceId", referencedColumnName="ServiceId")
	private ServicePack servicePack;
	
	@ManyToOne(targetEntity= ComboService.class, fetch=FetchType.LAZY)
	@JoinColumn(name="ComboId", referencedColumnName="ComboId")
	private ComboService comboService;

}
