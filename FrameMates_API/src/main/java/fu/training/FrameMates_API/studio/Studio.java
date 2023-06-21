package fu.training.FrameMates_API.studio;
import fu.training.FrameMates_API.servicepack.ServicePack;
import fu.training.FrameMates_API.mediafile.MediaFile;
import fu.training.FrameMates_API.employee.Employee;
import fu.training.FrameMates_API.album.Album;
import fu.training.FrameMates_API.administrator.Administrator;
import java.io.Serializable;
import java.util.Set;

import jakarta.persistence.*;
import jakarta.transaction.Transactional;

import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import fu.training.FrameMates_API.transaction.Transaction;
import fu.training.FrameMates_API.voucher.Voucher;
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
@Table(name="Studio")
public class Studio implements Serializable {
	private static final long serialVersionUID = 6529685098267757690L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="StudioId")
	private Integer studioId;
	
	@Column(name="Name")
	private String name;
	
	@Column(name="CreateDate")
	private java.sql.Timestamp createDate;
	
	@Column(name="Address", length = Integer.MAX_VALUE)
	private String address;
	
	@Column(name="Description", length = Integer.MAX_VALUE)
	private String description;
	
	@Column(name="Status")
	private Integer status;
	
	@Column(name="TotalRating")
	private Double totalRating;

	@Column(name="AvatarStudio", length = Integer.MAX_VALUE)
	private String avatarStudio;
	
	@Column(name="CoverImage", length = Integer.MAX_VALUE)
	private String coverImage;

	@Column(name="Balance")
	private Integer balance;

	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name="Owner")
	private Employee owner;

	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name="SubAdminStudio")
	private Employee subAdminStudio;

	@ManyToOne(targetEntity=Administrator.class, fetch=FetchType.LAZY)
	@JoinColumn(name="AdminId", referencedColumnName="AdminId")
	private Administrator admin;
	
	@OneToMany(mappedBy="studio", cascade = CascadeType.ALL, fetch = FetchType.LAZY, targetEntity=ServicePack.class)
	private Set<ServicePack> studio_servicePack;

	
	@OneToMany(mappedBy="studio", cascade = CascadeType.ALL, fetch = FetchType.LAZY, targetEntity=Album.class)
	private Set<Album> studio_Album;
	
	@OneToMany(mappedBy="studio", cascade = CascadeType.ALL, fetch = FetchType.LAZY, targetEntity=Employee.class)
	private Set<Employee> studio_Employee;
	
	@OneToMany(mappedBy="studio", cascade = CascadeType.ALL, fetch = FetchType.LAZY, targetEntity= Voucher.class)
	private Set<Voucher> studio_Voucher;
	
	@OneToMany(mappedBy="studio", cascade = CascadeType.ALL, fetch = FetchType.LAZY, targetEntity=MediaFile.class)
	private Set<MediaFile> studio_MediaFile;
	
	@OneToMany(mappedBy="studio", cascade = CascadeType.ALL, fetch = FetchType.LAZY, targetEntity= Transaction.class)
	private Set<Transaction> studio_Transaction;
}
