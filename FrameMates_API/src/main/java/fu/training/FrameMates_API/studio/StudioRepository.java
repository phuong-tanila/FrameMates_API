package fu.training.FrameMates_API.studio;

import fu.training.FrameMates_API.studio.Studio;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface StudioRepository extends JpaRepository<Studio, Integer> {
    List<Studio> findAllByNameContains(String name);
    Studio findByOwner_EmployeeId(int employeeId);
}
