package fu.training.FrameMates_API.album;
 import java.io.Serializable;
 import java.util.Set;

 import jakarta.persistence.*;
 import jakarta.transaction.Transactional;
 import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import fu.training.FrameMates_API.customer.Customer;
import fu.training.FrameMates_API.mediafile.MediaFile;
import fu.training.FrameMates_API.studio.Studio;
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
@Table(name="Album")
public class Album implements Serializable {

	 private static final long serialVersionUID = 6529685098267757690L;
	 @Id
	 @GeneratedValue(strategy = GenerationType.IDENTITY)
     @Column(name="AlbumId")
	private Integer albumId;
	
	@Column(name="Title", length=Integer.MAX_VALUE)
	private String title;
	
	@Column(name="CreateDate")
	private java.sql.Timestamp createDate;
	
	@Column(name="`View`")
	private Integer view = 0;


	@ManyToOne(targetEntity = Customer.class, fetch=FetchType.LAZY)
	@JoinColumn(name = "CustomerId", referencedColumnName = "CustomerId")
	private Customer customer;
	
	@ManyToOne(targetEntity= Studio.class, fetch=FetchType.LAZY)
    @JoinColumn(name = "StudioId", referencedColumnName = "StudioId")
	private Studio studio;
	
	@OneToMany(mappedBy="album", cascade = CascadeType.ALL, fetch = FetchType.LAZY, targetEntity = MediaFile.class)
	private Set<MediaFile> album_mediaFile;

}
