package fu.training.FrameMates_API.share.filters;

import com.fasterxml.jackson.databind.ObjectMapper;
import fu.training.FrameMates_API.share.exceptions.ExceptionResponse;
import fu.training.FrameMates_API.account.TokenType;
import fu.training.FrameMates_API.account.AccountService;
import fu.training.FrameMates_API.account.JwtService;
import io.jsonwebtoken.Claims;
import io.jsonwebtoken.ExpiredJwtException;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.AllArgsConstructor;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.WebAuthenticationDetailsSource;
import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;
import org.springframework.web.filter.OncePerRequestFilter;

import java.io.IOException;

import static org.springframework.http.HttpStatus.FORBIDDEN;
@Slf4j
@Component
@RequiredArgsConstructor
@AllArgsConstructor
public class JwtAuthenticationFilter extends OncePerRequestFilter {
    @Autowired
    private JwtService jwtService;
    @Autowired
    private AccountService accountService;
    @Override
    protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain) throws ServletException, IOException {
//        log.error(jwtService.toString());
//        log.error(accountService.toString());
        try {
            // Lấy jwt từ request
            String jwt = getJwtFromRequest(request);
            if (StringUtils.hasText(jwt))  {
                Claims claims = jwtService.getClaimsFromToken(TokenType.ACCESSTOKEN, jwt);
                String userEmail = claims.getSubject();
                UserDetails userDetails = accountService.loadUserByUsername(userEmail);
//                System.out.println(userDetails);
                if(userDetails != null) {
                    UsernamePasswordAuthenticationToken
                            authentication = new UsernamePasswordAuthenticationToken(userDetails, null, userDetails.getAuthorities());
                    authentication.setDetails(new WebAuthenticationDetailsSource().buildDetails(request));

                    SecurityContextHolder.getContext().setAuthentication(authentication);
                }
            }
            filterChain.doFilter(request, response);
        }catch (ExpiredJwtException ex) {
            log.error("Expired JWT token");
            response.setStatus(FORBIDDEN.value());
            response.setHeader("Exception", "Expired JWT token");
            ExceptionResponse exceptionResponse = new ExceptionResponse(
                    "Expired JWT token",
                    "Your JWT Token is expired"
            );
            response.setContentType("application/json");
            response.getWriter().println(new ObjectMapper().writeValueAsString(exceptionResponse));
        }

    }

    private String getJwtFromRequest(HttpServletRequest request) {
        String bearerToken = request.getHeader("Authorization");
//        System.out.println(bearerToken);
        // Kiểm tra xem header Authorization có chứa thông tin jwt không
        if (StringUtils.hasText(bearerToken) && bearerToken.startsWith("Bearer ")) {
            return bearerToken.substring(7);
        }
        return null;
    }
}
