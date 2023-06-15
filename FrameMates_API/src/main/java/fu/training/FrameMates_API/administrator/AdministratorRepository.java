package fu.training.FrameMates_API.administrator;

import fu.training.FrameMates_API.administrator.Administrator;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface AdministratorRepository extends JpaRepository<Administrator, Integer> {
}
