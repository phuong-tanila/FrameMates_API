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
@Table(name="Comment")
public class Comment implements Serializable {
	private static final long serialVersionUID = 6529685098267757690L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="CommentId")
	private Integer commentId;
	
	@Column(name="PostDate")
	private java.sql.Timestamp postDate;
	
	@Column(name="Content", length=Integer.MAX_VALUE)
	private String content;
	
	@ManyToOne(targetEntity= MediaFile.class, fetch=FetchType.LAZY)
	@JoinColumn(name="FileId", referencedColumnName="FileId")
	private MediaFile mediaFile;
	
	@ManyToOne(targetEntity= Customer.class, fetch=FetchType.LAZY)
	@JoinColumn(name="CustomerId", referencedColumnName="CustomerId")
	private Customer customer;
	
	@ManyToOne(targetEntity= Employee.class, fetch=FetchType.LAZY)
	@JoinColumn(name="EmployeeId", referencedColumnName="EmployeeId")
	private Employee employee;
}
