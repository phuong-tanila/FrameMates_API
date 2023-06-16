package fu.training.FrameMates_API.servicepack;

import java.util.ArrayList;
import java.util.List;
import javax.annotation.processing.Generated;
import org.springframework.stereotype.Component;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2023-06-15T23:53:01+0700",
    comments = "version: 1.4.1.Final, compiler: javac, environment: Java 17.0.5 (Oracle Corporation)"
)
@Component
public class ServicePackMapperImpl implements ServicePackMapper {

    @Override
    public ServicePack toEntity(ServicePackModel model) {
        if ( model == null ) {
            return null;
        }

        ServicePack servicePack = new ServicePack();

        return servicePack;
    }

    @Override
    public ServicePackModel toModel(ServicePack entity) {
        if ( entity == null ) {
            return null;
        }

        ServicePackModel servicePackModel = new ServicePackModel();

        return servicePackModel;
    }

    @Override
    public List<ServicePack> toEntities(List<ServicePackModel> models) {
        if ( models == null ) {
            return null;
        }

        List<ServicePack> list = new ArrayList<ServicePack>( models.size() );
        for ( ServicePackModel servicePackModel : models ) {
            list.add( toEntity( servicePackModel ) );
        }

        return list;
    }

    @Override
    public List<ServicePackModel> toModels(List<ServicePack> entites) {
        if ( entites == null ) {
            return null;
        }

        List<ServicePackModel> list = new ArrayList<ServicePackModel>( entites.size() );
        for ( ServicePack servicePack : entites ) {
            list.add( toModel( servicePack ) );
        }

        return list;
    }
}
