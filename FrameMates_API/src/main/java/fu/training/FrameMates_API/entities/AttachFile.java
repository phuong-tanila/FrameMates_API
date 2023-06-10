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
@Table(name="AttachFile")
public class AttachFile implements Serializable {

	 private static final long serialVersionUID = 6529685098267757690L;
	 @Id
	 @GeneratedValue(strategy = GenerationType.IDENTITY)
	 @Column(name="AttachFileId")
	private Integer attachFileId;
	
	@Column(name="FilePath", length=Integer.MAX_VALUE)
	private String filePath;

	 @ManyToOne(targetEntity= Message.class, fetch=FetchType.LAZY)
	 @JoinColumn(name="MessageId", referencedColumnName="MessageId")
	 private Message message;
}
