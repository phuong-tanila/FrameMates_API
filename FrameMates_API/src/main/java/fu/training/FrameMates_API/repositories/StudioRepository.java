package fu.training.FrameMates_API.repositories;

import fu.training.FrameMates_API.entities.Studio;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface StudioRepository extends JpaRepository<Studio, Integer> {
}
