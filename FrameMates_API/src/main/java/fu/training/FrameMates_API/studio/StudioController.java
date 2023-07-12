package fu.training.FrameMates_API.studio;

import fu.training.FrameMates_API.account.Account;
import fu.training.FrameMates_API.customer.CustomerModel;
import fu.training.FrameMates_API.share.helpers.PaginationHelper;
import fu.training.FrameMates_API.studio.StudioService;
import jakarta.validation.Valid;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
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

	@GetMapping("status/{status}")
	public ResponseEntity getByStatus(
			@PathVariable Integer status,
			@RequestParam(defaultValue = "16") int pageSize
			, @RequestParam(defaultValue = "0") int pageNo
			, @RequestParam(defaultValue = "") String[] sort
			, @RequestParam(defaultValue = "") String searchKey
	){
		Pageable pageable = PaginationHelper.getPageable(pageNo, pageSize, sort);
		return new ResponseEntity<>(studioService.searchByStatus(status, searchKey, pageable), HttpStatus.OK);

	}
	@PostMapping()
	public ResponseEntity createStudio(
			@RequestBody @Valid StudioModel studio,
			Authentication authentication
	){
		Account currentAccount = (Account) authentication.getPrincipal();
		return ResponseEntity.ok(studioService.createStudio(studio, currentAccount.getEmployee()));
	}
	@GetMapping()
	public ResponseEntity getByName(@RequestParam String name) {
		List<StudioModel> studioModels = studioService.getByName(name);
		return studioModels != null ? ResponseEntity.ok(studioModels) : new ResponseEntity<>("Studio not found",HttpStatus.UNPROCESSABLE_ENTITY) ;
	}
	@PutMapping("/{id}")
	public ResponseEntity update(@PathVariable Integer id, @RequestBody StudioModel studio) {
		StudioModel studioModel = studioService.update(id, studio);
		return ResponseEntity.ok(studioModel);
	}
}
