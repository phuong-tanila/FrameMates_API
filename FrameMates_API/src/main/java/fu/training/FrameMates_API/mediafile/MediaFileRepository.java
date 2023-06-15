package fu.training.FrameMates_API.mediafile;

import fu.training.FrameMates_API.mediafile.MediaFile;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface MediaFileRepository extends JpaRepository<MediaFile, Integer> {
}
