package fu.training.FrameMates_API.customer;
import fu.training.FrameMates_API.comment.Comment;
import fu.training.FrameMates_API.channel.Channel;
import fu.training.FrameMates_API.album.Album;
import fu.training.FrameMates_API.administrator.Administrator;
import fu.training.FrameMates_API.account.Account;
import java.io.Serializable;
import java.util.Set;

import jakarta.persistence.*;
import jakarta.transaction.Transactional;

import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import fu.training.FrameMates_API.favorite.Favorite;
import fu.training.FrameMates_API.mediafile.MediaFile;
import fu.training.FrameMates_API.order.Order;
import fu.training.FrameMates_API.payment.Payment;
import fu.training.FrameMates_API.reaction.Reaction;
import fu.training.FrameMates_API.voucherwallet.VoucherWallet;
import lombok.*;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
@Entity
@Transactional
@JsonSerialize
@Table(name="Customer")
public class Customer implements Serializable {
	private static final long serialVersionUID = 6529685098267757690L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="CustomerId")
	private Integer customerId;

	@Column(name="BirthDate")
	@Temporal(TemporalType.DATE)	
	private java.util.Date birthDate;
	
	@Column(name="CreateDate")
	private java.sql.Timestamp createDate;
	
	@Column(name="Status")
	private Integer status;
	
	@Column(name="Address", length=Integer.MAX_VALUE)
	private String address;
	
	@ManyToOne(targetEntity=Administrator.class, fetch=FetchType.LAZY)
	@JoinColumn(name="AdminId", referencedColumnName="AdminId", nullable=true)
	@EqualsAndHashCode.Exclude
	@ToString.Exclude
	private Administrator admin;

	@ManyToOne(targetEntity=Account.class, fetch=FetchType.LAZY, cascade = CascadeType.ALL)
	@JoinColumn(name="AccountId", referencedColumnName="AccountId", nullable=false)
	@EqualsAndHashCode.Exclude
	@ToString.Exclude
	private Account account;

	@OneToMany(mappedBy="customer", cascade = CascadeType.ALL, fetch = FetchType.LAZY, targetEntity= VoucherWallet.class)
	private Set<VoucherWallet> customer_voucherWallet;
	
	@OneToMany(mappedBy="customer", cascade = CascadeType.ALL, fetch = FetchType.LAZY, targetEntity=Album.class)
	private Set<Album> customer_Album;
	
	@OneToMany(mappedBy="customer", cascade = CascadeType.ALL, fetch = FetchType.LAZY, targetEntity= Reaction.class)
	private Set<Reaction> customer_Reaction;
	
	@OneToMany(mappedBy="customer", cascade = CascadeType.ALL, fetch = FetchType.LAZY, targetEntity= Order.class)
	private Set<Order> customer_Order;
	
	@OneToMany(mappedBy="customer", cascade = CascadeType.ALL, fetch = FetchType.LAZY, targetEntity=Comment.class)
	private Set<Comment> customer_Comment;
	
	@OneToMany(mappedBy="customer", cascade = CascadeType.ALL, fetch = FetchType.LAZY, targetEntity=Channel.class)
	private Set<Channel> customer_Channel;
	
	@OneToMany(mappedBy="customer", cascade = CascadeType.ALL, fetch = FetchType.LAZY, targetEntity= MediaFile.class)
	private Set<MediaFile> customer_mediaFile;
	
	@OneToMany(mappedBy="customer", cascade = CascadeType.ALL, fetch = FetchType.LAZY, targetEntity= Payment.class)
	private Set<Payment> customer_payment;

	@OneToMany(mappedBy="customer", cascade = CascadeType.ALL, fetch = FetchType.LAZY, targetEntity= Favorite.class)
	private Set<Favorite> customer_favorite;
}
