package fu.training.FrameMates_API.administrator;

import javax.annotation.processing.Generated;
import org.springframework.stereotype.Component;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2023-06-15T23:03:10+0700",
    comments = "version: 1.4.1.Final, compiler: javac, environment: Java 17.0.5 (Oracle Corporation)"
)
@Component
public class AdministratorMapperImpl implements AdministratorMapper {

    @Override
    public Administrator toEntity(AdministratorModel model) {
        if ( model == null ) {
            return null;
        }

        Administrator administrator = new Administrator();

        return administrator;
    }

    @Override
    public AdministratorModel toModel(Administrator entity) {
        if ( entity == null ) {
            return null;
        }

        AdministratorModel administratorModel = new AdministratorModel();

        return administratorModel;
    }
}
