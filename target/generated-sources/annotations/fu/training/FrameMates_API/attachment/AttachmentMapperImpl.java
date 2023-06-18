package fu.training.FrameMates_API.attachment;

import javax.annotation.processing.Generated;
import org.springframework.stereotype.Component;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2023-06-18T17:03:44+0700",
    comments = "version: 1.4.1.Final, compiler: javac, environment: Java 17.0.5 (Oracle Corporation)"
)
@Component
public class AttachmentMapperImpl implements AttachmentMapper {

    @Override
    public Attachment toEntity(AttachmentModel model) {
        if ( model == null ) {
            return null;
        }

        Attachment attachment = new Attachment();

        return attachment;
    }

    @Override
    public AttachmentModel toModel(Attachment entity) {
        if ( entity == null ) {
            return null;
        }

        AttachmentModel attachmentModel = new AttachmentModel();

        return attachmentModel;
    }
}
