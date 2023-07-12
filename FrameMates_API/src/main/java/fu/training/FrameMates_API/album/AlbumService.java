package fu.training.FrameMates_API.album;

import fu.training.FrameMates_API.employee.Employee;
import fu.training.FrameMates_API.share.exceptions.RecordNotFoundException;
import jdk.jshell.spi.ExecutionControl;

public interface AlbumService {

    AlbumModel createAlbum(AlbumModel albumModel, Employee employee);

    void deleteAlbum(int id, Employee employee) throws RecordNotFoundException;
}
