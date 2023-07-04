package fu.training.FrameMates_API.account;

import javax.annotation.processing.Generated;
import org.springframework.stereotype.Component;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2023-06-18T17:03:44+0700",
    comments = "version: 1.4.1.Final, compiler: javac, environment: Java 17.0.5 (Oracle Corporation)"
)
@Component
public class AccountMapperImpl implements AccountMapper {

    @Override
    public Account toEntity(AccountModel model) {
        if ( model == null ) {
            return null;
        }

        Account account = new Account();

        account.setAccountId( model.getAccountId() );
        account.setUsername( model.getUsername() );
        account.setFullName( model.getFullName() );
        account.setEmail( model.getEmail() );
        account.setPhone( model.getPhone() );
        account.setAvatar( model.getAvatar() );
        account.setRole( model.getRole() );

        return account;
    }

    @Override
    public AccountModel toModel(Account entity) {
        if ( entity == null ) {
            return null;
        }

        AccountModel accountModel = new AccountModel();

        accountModel.setAccountId( entity.getAccountId() );
        accountModel.setUsername( entity.getUsername() );
        accountModel.setFullName( entity.getFullName() );
        accountModel.setEmail( entity.getEmail() );
        accountModel.setPhone( entity.getPhone() );
        accountModel.setAvatar( entity.getAvatar() );
        accountModel.setRole( entity.getRole() );

        return accountModel;
    }
}
