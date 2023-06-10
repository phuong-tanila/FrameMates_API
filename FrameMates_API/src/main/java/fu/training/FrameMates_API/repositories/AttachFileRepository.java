package fu.training.FrameMates_API.repositories;

import fu.training.FrameMates_API.entities.AttachFile;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface AttachFileRepository extends JpaRepository<AttachFile, Integer> {
}
