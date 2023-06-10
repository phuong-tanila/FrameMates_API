package fu.training.FrameMates_API.repositories;

import fu.training.FrameMates_API.entities.ServicePack;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ServicePackRepository extends JpaRepository<ServicePack, Integer> {
}
