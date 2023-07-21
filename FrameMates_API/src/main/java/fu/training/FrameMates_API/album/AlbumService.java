package fu.training.FrameMates_API.album;

import fu.training.FrameMates_API.employee.Employee;
import fu.training.FrameMates_API.share.exceptions.RecordNotFoundException;
import jdk.jshell.spi.ExecutionControl;
import org.springframework.security.core.Authentication;

import java.util.List;

public interface AlbumService {

    AlbumModel createAlbum(AlbumModel albumModel);

    void deleteAlbum(int id, Employee employee) throws RecordNotFoundException;

    List<AlbumModel> getAlbumsByStudioId(int studioId);

    List<AlbumModel> getAlbumsByByCurrentStudio(Authentication authentication);
}
