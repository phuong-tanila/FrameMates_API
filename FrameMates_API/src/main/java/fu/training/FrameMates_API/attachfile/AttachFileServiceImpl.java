package fu.training.FrameMates_API.attachfile;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AttachFileServiceImpl implements AttachFileService {

    @Autowired
    private AttachFileRepository attachFileRepository;

}
