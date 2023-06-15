package fu.training.FrameMates_API.message;
import fu.training.FrameMates_API.channel.Channel;
import fu.training.FrameMates_API.attachfile.AttachFile;
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
@Table(name="Message")
public class Message implements Serializable {
	private static final long serialVersionUID = 6529685098267757690L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="MessageId")
	private Integer messageId;
	
	@Column(name="Content", length=Integer.MAX_VALUE)
	private String content;
	
	@Column(name="Status")
	private Integer status;

	@ManyToOne(targetEntity=Channel.class, fetch=FetchType.LAZY)
	@JoinColumn(name="ChannelId", referencedColumnName="ChannelId")
	private Channel channel;
	
	@OneToMany(mappedBy="message", cascade = CascadeType.ALL, fetch = FetchType.LAZY, targetEntity=AttachFile.class)
	private Set<AttachFile> message_AttachFile;
}
