package fu.training.FrameMates_API.repositories;

import fu.training.FrameMates_API.entities.ComboDetail;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ComboDetailRepository extends JpaRepository<ComboDetail, Integer> {
}
