package fu.training.FrameMates_API.attachfile;

import javax.annotation.processing.Generated;
import org.springframework.stereotype.Component;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2023-06-18T17:03:44+0700",
    comments = "version: 1.4.1.Final, compiler: javac, environment: Java 17.0.5 (Oracle Corporation)"
)
@Component
public class AttachFileMapperImpl implements AttachFileMapper {

    @Override
    public AttachFile toEntity(AttachFileModel model) {
        if ( model == null ) {
            return null;
        }

        AttachFile attachFile = new AttachFile();

        return attachFile;
    }

    @Override
    public AttachFileModel toModel(AttachFile entity) {
        if ( entity == null ) {
            return null;
        }

        AttachFileModel attachFileModel = new AttachFileModel();

        return attachFileModel;
    }
}
