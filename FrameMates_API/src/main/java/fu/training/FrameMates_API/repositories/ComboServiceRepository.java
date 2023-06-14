package fu.training.FrameMates_API.repositories;

import fu.training.FrameMates_API.entities.ComboService;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ComboServiceRepository extends JpaRepository<ComboService, Integer> {
}