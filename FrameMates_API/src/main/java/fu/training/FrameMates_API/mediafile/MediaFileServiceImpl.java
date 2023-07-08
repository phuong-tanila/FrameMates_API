package fu.training.FrameMates_API.mediafile;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.Timestamp;
import java.util.List;

@Service
public class MediaFileServiceImpl implements MediaFileService {

	@Autowired
	private MediaFileRepository mediaFileRepository;
	@Autowired
	private MediaFileMapper mediaFileMapper;

	@Override
	public List<MediaFileModel> createMediaFile(List<MediaFileModel> mediaFileModels) {
		var mediaFiles = mediaFileMapper.toEntities(mediaFileModels);
		mediaFiles.forEach(file -> {
			file.setUploadDate(new Timestamp(System.currentTimeMillis()));
			file.setView(0);
		});
		return mediaFileMapper.toModels(mediaFileRepository.saveAll(mediaFiles));
	}
}
