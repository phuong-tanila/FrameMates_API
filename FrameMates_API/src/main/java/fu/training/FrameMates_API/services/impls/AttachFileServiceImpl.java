package fu.training.FrameMates_API.services.impls;

import fu.training.FrameMates_API.repositories.AttachFileRepository;
import fu.training.FrameMates_API.services.AttachFileService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AttachFileServiceImpl implements AttachFileService {

    @Autowired
    private AttachFileRepository attachFileRepository;

}
