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
@Table(name="Favorite")
public class Favorite implements Serializable{

    private static final long serialVersionUID = 6529685098267757690L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="FavoriteId")
    private Integer favoriteId;

    @ManyToOne(targetEntity= ServicePack.class, fetch=FetchType.LAZY)
    @JoinColumn(name="ServicePackId", referencedColumnName="ServiceId")
    private ServicePack servicePack;

    @ManyToOne(targetEntity= Customer.class, fetch=FetchType.LAZY)
    @JoinColumn(name="CustomerId", referencedColumnName="CustomerId")
    private Customer customer;

    @ManyToOne(targetEntity= ComboService.class, fetch=FetchType.LAZY)
    @JoinColumn(name="ComboServiceId", referencedColumnName="ComboId")
    private ComboService comboService;
}
