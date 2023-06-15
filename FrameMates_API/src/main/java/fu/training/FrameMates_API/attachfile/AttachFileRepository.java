package fu.training.FrameMates_API.attachfile;

import fu.training.FrameMates_API.attachfile.AttachFile;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface AttachFileRepository extends JpaRepository<AttachFile, Integer> {
}
