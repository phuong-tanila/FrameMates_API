package fu.training.FrameMates_API.tag;
import java.io.Serializable;
import java.util.Set;

import jakarta.persistence.*;
import jakarta.transaction.Transactional;

import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import fu.training.FrameMates_API.tagdetail.TagDetail;
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
@Table(name="Tag")
public class Tag implements Serializable {

	private static final long serialVersionUID = 6529685098267757690L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="TagId")
	private Integer tagId;
	
	@Column(name="Title", length = Integer.MAX_VALUE)
	private String title;
	
	@OneToMany(mappedBy="tag", cascade = CascadeType.ALL, fetch = FetchType.LAZY, targetEntity= TagDetail.class)
	private Set<TagDetail> tag_TagDetail;
}
