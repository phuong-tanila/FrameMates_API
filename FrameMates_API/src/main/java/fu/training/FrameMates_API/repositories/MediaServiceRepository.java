package fu.training.FrameMates_API.repositories;

import fu.training.FrameMates_API.entities.MediaFile;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface MediaServiceRepository extends JpaRepository<MediaFile, Integer> {
}
