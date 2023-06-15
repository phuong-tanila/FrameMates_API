package fu.training.FrameMates_API.share.configs;

import fu.training.FrameMates_API.account.Account;
import fu.training.FrameMates_API.account.JwtService;
import fu.training.FrameMates_API.administrator.Administrator;
import fu.training.FrameMates_API.administrator.AdministratorService;
import fu.training.FrameMates_API.share.filters.JwtAuthenticationFilter;
import fu.training.FrameMates_API.account.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configurers.AbstractHttpConfigurer;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;

@Configuration
@EnableWebSecurity
public class WebSecurityConfig  {
    @Autowired
    private AccountService accountService;
    @Autowired
    private AdministratorService administratorService;
    @Autowired
    private JwtService jwtService;
    @Bean
    public SecurityFilterChain publicConfigure(HttpSecurity http) throws Exception {
        http
                .cors(AbstractHttpConfigurer::disable)
                .csrf(AbstractHttpConfigurer::disable)
                .authorizeHttpRequests(requests -> requests
                        .requestMatchers(HttpMethod.POST, "/auth/login").permitAll()
                        .requestMatchers(HttpMethod.GET, "/services").permitAll()
                        .anyRequest().authenticated()
//                        .anyRequest().permitAll()
                ).authenticationProvider(authenticationProvider())
                .addFilterBefore(new JwtAuthenticationFilter(jwtService, accountService), UsernamePasswordAuthenticationFilter.class);
            if(accountService.findAll().size() == 0 ){
                Account account = new Account();
                account.setUsername("thanh");
                account.setPassword(passwordEncoder().encode("1509"));
                account.setRole("CUS");
                accountService.createAccount(account);
                Administrator admin = new Administrator();
                admin.setAccount(account);
//                customerService.createCustomer(admin);
                administratorService.createAdmin(admin);
            }
        return http.build();
    }

    @Bean
    public UserDetailsService userDetailsService(){
        return (UserDetailsService) accountService;
    }

    @Bean
    public PasswordEncoder passwordEncoder(){
        return new BCryptPasswordEncoder();
    }

    @Bean
    public AuthenticationProvider authenticationProvider() {
        DaoAuthenticationProvider authProvider = new DaoAuthenticationProvider();
        authProvider.setUserDetailsService(userDetailsService());
        authProvider.setPasswordEncoder(passwordEncoder());
        return authProvider;
    }


}
