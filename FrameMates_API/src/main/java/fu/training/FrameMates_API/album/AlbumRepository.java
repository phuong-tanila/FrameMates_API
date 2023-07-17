package fu.training.FrameMates_API.album;

import fu.training.FrameMates_API.album.Album;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AlbumRepository extends JpaRepository<Album, Integer> {
    List<Album> findByStudio_StudioId(int studioId);
}
