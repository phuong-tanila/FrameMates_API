package fu.training.FrameMates_API.studio;

import fu.training.FrameMates_API.studio.StudioService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@Slf4j
@CrossOrigin
@RequestMapping("/api/studios")
public class StudioController {

	@Autowired
	private StudioService studioService;

	@GetMapping("/{id}")
	public ResponseEntity getById(@PathVariable Integer id) {
		StudioModel studioModel = studioService.getById(id);
		return studioModel != null ? ResponseEntity.ok(studioModel) : new ResponseEntity<>("Studio not found",HttpStatus.UNPROCESSABLE_ENTITY) ;
	}

	@PutMapping("/{id}")
	public ResponseEntity updateStatus(@PathVariable Integer id, @RequestParam Integer status) {
		StudioModel studioModel = studioService.updateStatus(id, status);
		return studioModel != null ? ResponseEntity.ok(studioModel) : new ResponseEntity<>("Studio not found",HttpStatus.UNPROCESSABLE_ENTITY) ;
	}

	@GetMapping()
	public ResponseEntity getById(@RequestParam String name) {
		List<StudioModel> studioModels = studioService.getByName(name);
		return studioModels != null ? ResponseEntity.ok(studioModels) : new ResponseEntity<>("Studio not found",HttpStatus.UNPROCESSABLE_ENTITY) ;
	}
}
