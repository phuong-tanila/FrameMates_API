package fu.training.FrameMates_API.servicepack;

import fu.training.FrameMates_API.servicepack.ServicePack;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Set;

@Repository
public interface ServicePackRepository extends JpaRepository<ServicePack, Integer> {

    Page<ServicePack> findByNameContaining(String name, Pageable pageable);
    @Query("select sv from ServicePack sv where sv.studio.studioId = :id and sv.status = 1")
    Set<ServicePack> findByStudioStudioId(long id);
    @Query("select sv from ServicePack sv where sv.studio.studioId = :id and sv.status = 1")
    Page<ServicePack> findByStudioStudioId(long id, Pageable pageable);
}
