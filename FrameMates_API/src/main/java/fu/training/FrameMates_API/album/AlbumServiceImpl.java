package fu.training.FrameMates_API.album;

import fu.training.FrameMates_API.employee.Employee;
import fu.training.FrameMates_API.mediafile.MediaFile;
import fu.training.FrameMates_API.mediafile.MediaFileModel;
import fu.training.FrameMates_API.mediafile.MediaFileService;
import fu.training.FrameMates_API.share.exceptions.RecordNotFoundException;
import fu.training.FrameMates_API.studio.StudioMapper;
import fu.training.FrameMates_API.studio.StudioService;
import jdk.jshell.spi.ExecutionControl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
public class AlbumServiceImpl implements AlbumService {

	@Autowired
	private AlbumRepository albumRepository;

	@Autowired
	private AlbumMapper albumMapper;
	@Autowired
	private StudioMapper studioMapper;

	@Autowired
	private MediaFileService mediaFileService;

	@Autowired
	private StudioService studioService;
	@Override
	public AlbumModel createAlbum(AlbumModel albumModel, Employee employee) {
		if(employee.getStudio() == null) throw new RecordNotFoundException("You must own or work for a studio to take this action");
		var album = albumMapper.toEntity(albumModel);
		album.setAlbumId(null);
		album.setCreateDate(new Timestamp(System.currentTimeMillis()));
		album.setView(0);
		album.getAlbum_mediaFile().forEach(f -> f.setAlbum(album));
		album.setStudio(employee.getStudio());
		album.getAlbum_mediaFile().forEach(mediaFile -> {
			mediaFile.setView(0);
			mediaFile.setUploadDate(new Timestamp(System.currentTimeMillis()));
		});
		return albumMapper.toModel(albumRepository.save(album));
	}

	@Override
	public void deleteAlbum(int id, Employee employee) throws RecordNotFoundException{
		if(employee == null) throw new IllegalArgumentException("you must has employee role to do this function");
		Optional<Album> otnAlbum = albumRepository.findById(id);
		if(otnAlbum.isEmpty()) throw new RecordNotFoundException("Album id not found!!");
		albumRepository.delete(otnAlbum.get());
	}
}
