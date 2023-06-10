package fu.training.FrameMates_API.repositories;

import fu.training.FrameMates_API.entities.TagDetail;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface TagDetailRepository extends JpaRepository<TagDetail, Integer> {
}
