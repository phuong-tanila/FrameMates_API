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
@Table(name="MediaService")
public class MediaService implements Serializable {
	private static final long serialVersionUID = 6529685098267757690L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="FileId")
	private Integer fileId;
	
	@Column(name="FilePath", length=Integer.MAX_VALUE)
	private String filePath;
	
	@Column(name="FileIndex")
	private Integer fileIndex;

	@ManyToOne(targetEntity= ServicePack.class, fetch=FetchType.LAZY)
	@JoinColumn(name="ServiceId", referencedColumnName="ServiceId")
	private ServicePack servicePack;
}
