package fu.training.FrameMates_API.album;

import fu.training.FrameMates_API.employee.Employee;
import jdk.jshell.spi.ExecutionControl;

public interface AlbumService {

    AlbumModel createAlbum(AlbumModel albumModel, Employee employee);

    AlbumModel deleteAlbum(int id, Employee employee) throws ExecutionControl.NotImplementedException;
}
