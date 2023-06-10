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
@Table(name="TagDetail")
public class TagDetail implements Serializable {
	private static final long serialVersionUID = 6529685098267757690L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="TagDetailId")
	private Integer tagDetailId;
	
	@ManyToOne(targetEntity=MediaFile.class, fetch=FetchType.LAZY)
	@JoinColumn(name="FileId", referencedColumnName="FileId")
	private MediaFile mediaFile;
	
	@ManyToOne(targetEntity=Tag.class, fetch=FetchType.LAZY)
	@JoinColumn(name="TagId", referencedColumnName="TagId")
	private Tag tag;
}
