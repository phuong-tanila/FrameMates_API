package fu.training.FrameMates_API.entities;
import java.io.Serializable;
import java.util.Set;



import com.fasterxml.jackson.databind.annotation.JsonSerialize;

import jakarta.persistence.*;
import jakarta.transaction.Transactional;
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
@Table(name="Account")
public class Account implements Serializable{
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

    @OneToMany(mappedBy="account", cascade = CascadeType.ALL, fetch = FetchType.LAZY, targetEntity=Employee.class)
    private Set<Employee> account_Employee;

    @OneToMany(mappedBy="account", cascade = CascadeType.ALL, fetch = FetchType.LAZY, targetEntity=Customer.class)
    private Set<Customer> account_Customer;

    @OneToMany(mappedBy="account", cascade = CascadeType.ALL, fetch = FetchType.LAZY, targetEntity=Administrator.class)
    private Set<Administrator> account_Administrator;

}
