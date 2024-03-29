package fu.training.FrameMates_API.mediaservice;

import fu.training.FrameMates_API.mediafile.MediaFile;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface MediaServiceRepository extends JpaRepository<MediaFile, Integer> {
}
