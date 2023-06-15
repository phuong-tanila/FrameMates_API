package fu.training.FrameMates_API.reaction;
import fu.training.FrameMates_API.mediafile.MediaFile;
import fu.training.FrameMates_API.customer.Customer;
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
@Table(name="Reaction")
public class Reaction implements Serializable {
	private static final long serialVersionUID = 6529685098267757690L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="ReactionId")
	private Integer reactionId;

	@ManyToOne(targetEntity=MediaFile.class, fetch=FetchType.LAZY)
	@JoinColumn(name="FileId", referencedColumnName="FileId")
	private MediaFile mediaFile;
	
	@ManyToOne(targetEntity=Customer.class, fetch=FetchType.LAZY)
	@JoinColumn(name="CustomerId", referencedColumnName="CustomerId")
	private Customer customer;
}
