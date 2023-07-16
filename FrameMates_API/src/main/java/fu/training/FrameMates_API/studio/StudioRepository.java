package fu.training.FrameMates_API.studio;

import fu.training.FrameMates_API.studio.Studio;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface StudioRepository extends JpaRepository<Studio, Integer> {
    List<Studio> findAllByNameContains(String name);
    Studio findByOwner_EmployeeId(int employeeId);

    Page<Studio> findAllByNameContainingOrOwner_Account_FullNameContainingOrOwner_Account_EmailContaining(String name, String fullname, String email, Pageable pageable);
    @Query("select s from Studio s where s.status = :status and (s.owner.account.email like concat('%', :searchKey, '%') or s.owner.account.fullName like concat('%', :searchKey, '%') or s.name like concat('%', :searchKey, '%'))")

    Page<Studio> findAllByNameContainingOrOwner_Account_FullNameContainingOrOwner_Account_EmailContainingAndStatus(String searchKey, int status, Pageable pageable);
}
