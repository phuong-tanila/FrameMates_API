package fu.training.FrameMates_API.account.impls;

import fu.training.FrameMates_API.account.TokenTypeEnum;
import fu.training.FrameMates_API.account.JwtService;
import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Service;


@Service
public class JwtServiceImpl implements JwtService {

    @Value("${application.security.jwt.refresh-token.secret-key}")
    private String refreshTokenSecretKey;
    @Value("${application.security.jwt.refresh-token.expiration}")
    private long refreshTokenExpiration;
    @Value("${application.security.jwt.access-token.secret-key}")
    private String accessTokenSecretKey;
    @Value("${application.security.jwt.access-token.expiration}")
    private long accessTokenExpiration;
    private Map<String, Object> extraClaims;

    public JwtServiceImpl() {
        Map<String, Object> claims = new HashMap<>();
//        claims.put("")
        this.extraClaims = claims;
    }

    private String generateToken(Map<String, Object> extraClaims, UserDetails userDetails, long expiration, String secretKey) {
        return Jwts
                .builder()
                .setClaims(extraClaims)
                .setSubject(userDetails.getUsername())
                .setIssuedAt(new Date(System.currentTimeMillis()))
                .setExpiration(new Date(System.currentTimeMillis() + expiration))
                .signWith(SignatureAlgorithm.HS256, secretKey)
                .compact();
    }

    public String generateToken(TokenTypeEnum tokenTypeEnum, UserDetails userDetails){

        if(TokenTypeEnum.ACCESSTOKEN == tokenTypeEnum){
            return generateToken(extraClaims, userDetails, accessTokenExpiration, accessTokenSecretKey);
        }
        return generateToken(new HashMap<>(), userDetails, refreshTokenExpiration, refreshTokenSecretKey);
    }

//    public Claims getClaimsFromRefreshToken(String token){
//        return getClaimsFromJWT(token, refreshTokenSecretKey);
//    }
//    public Claims getClaimsFromAccessToken(String token){
//        return getClaimsFromJWT(token, refreshTokenSecretKey);
//    }
    public Claims getClaimsFromToken(TokenTypeEnum tokenTypeEnum, String token)  {
        String jwtSecret = tokenTypeEnum == TokenTypeEnum.REFRESHTOKEN ? refreshTokenSecretKey : accessTokenSecretKey;
        return Jwts.parser()
                .setSigningKey(jwtSecret)
                .parseClaimsJws(token)
                .getBody();
    }
}
