package fu.training.FrameMates_API.account;
import java.io.Serializable;
import java.util.Collection;
import java.util.Collections;
import java.util.Set;



import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import fu.training.FrameMates_API.administrator.Administrator;
import fu.training.FrameMates_API.customer.Customer;
import fu.training.FrameMates_API.employee.Employee;

import jakarta.persistence.*;
import jakarta.transaction.Transactional;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;


@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
@Entity
@Transactional
@JsonSerialize
@Table(name="Account")
public class Account implements Serializable, UserDetails {
    private static final long serialVersionUID = 6529685098267757690L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="AccountId")
    private Integer accountId;

    @Column(name="Username", length=Integer.MAX_VALUE)
    private String username;

    @Column(name="Password")
    private String password;

    @Column(name="FullName", length=Integer.MAX_VALUE)
    private String fullName;

    @Column(name="Email", length=Integer.MAX_VALUE)
    private String email;

    @Column(name="Phone")
    private String phone;

    @Column(name="Avatar", length=Integer.MAX_VALUE)
    private String avatar;

    @Column(name="Role")
    private String role;

    @OneToOne(mappedBy="account", cascade = CascadeType.ALL, fetch = FetchType.EAGER, targetEntity=Employee.class)
    private Employee employee;

    @OneToOne(mappedBy="account", cascade = CascadeType.ALL, fetch = FetchType.EAGER, targetEntity=Customer.class)
    private Customer customer;

    @OneToOne(mappedBy="account", cascade = CascadeType.ALL, fetch = FetchType.EAGER, targetEntity=Administrator.class)
    private Administrator administrator;

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        return Collections.singleton(new SimpleGrantedAuthority(this.getRole()));
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        if(employee != null){
            return employee.getStatus() == 1;
        }else if(customer != null){
            return customer.getStatus() == 1;
        }else {
            return administrator.getStatus() == 1;
        }
    }

}
