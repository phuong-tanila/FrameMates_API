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
@Table(name="MediaFile")
public class MediaFile implements Serializable {
	private static final long serialVersionUID = 6529685098267757690L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="FileId")
	private Integer fileId;
	
	@Column(name="FilePath", length=Integer.MAX_VALUE)
	private String filePath;
	
	@Column(name="Title", length=Integer.MAX_VALUE)
	private String title;
	
	@Column(name="Description", length=Integer.MAX_VALUE)
	private String description;
	
	@Column(name="UploadDate")
	private java.sql.Timestamp uploadDate;
	
	@Column(name="`View`")
	private Integer view = 0;
	
	@ManyToOne(targetEntity=Album.class, fetch=FetchType.LAZY)
	@JoinColumn(name="AlbumId", referencedColumnName="AlbumId")
	private Album album;
	
	@ManyToOne(targetEntity=Customer.class, fetch=FetchType.LAZY)
	@JoinColumn(name="CustomerId", referencedColumnName="CustomerId")
	private Customer customer;
	
	@ManyToOne(targetEntity= Studio.class, fetch=FetchType.LAZY)
	@JoinColumn(name="StudioId", referencedColumnName="StudioId")
	private Studio studio;
	
	@OneToMany(mappedBy="mediaFile", cascade = CascadeType.ALL, fetch = FetchType.LAZY, targetEntity= Reaction.class)
	private Set<Reaction> mediaFile_reaction;
	
	@OneToMany(mappedBy="mediaFile", cascade = CascadeType.ALL, fetch = FetchType.LAZY, targetEntity=Comment.class)
	private Set<Comment> mediaFile_comment;
	
	@OneToMany(mappedBy="mediaFile", cascade = CascadeType.ALL, fetch = FetchType.LAZY, targetEntity= TagDetail.class)
	private Set<TagDetail> mediaFile_tagDetail;

}
