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
@Table(name="Channel")
public class Channel implements Serializable {
	private static final long serialVersionUID = 6529685098267757690L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="ChannelId")
	private Integer channelId;
	
	@ManyToOne(targetEntity= Customer.class, fetch=FetchType.LAZY)
	@JoinColumn(name="CustomerId", referencedColumnName="CustomerId")
	private Customer customer;
	
	@ManyToOne(targetEntity= Employee.class, fetch=FetchType.LAZY)
	@JoinColumn(name="EmployeeId", referencedColumnName="EmployeeId")
	private Employee employee;

	@OneToMany(mappedBy="channel",cascade = CascadeType.ALL, fetch = FetchType.LAZY, targetEntity= Message.class)
	private Set<Message> channel_Message;

}
