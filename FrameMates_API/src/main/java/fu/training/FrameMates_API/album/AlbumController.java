package fu.training.FrameMates_API.album;

import fu.training.FrameMates_API.account.Account;
import fu.training.FrameMates_API.album.AlbumService;
import fu.training.FrameMates_API.servicepack.ServicePackModel;
import fu.training.FrameMates_API.share.exceptions.RecordNotFoundException;
import fu.training.FrameMates_API.studio.StudioMapper;
import fu.training.FrameMates_API.studio.StudioModel;
import fu.training.FrameMates_API.studio.StudioService;
import jakarta.validation.Valid;
import jdk.jshell.spi.ExecutionControl;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@Slf4j
@CrossOrigin
@RequestMapping("/api/albums")
public class AlbumController {

	@Autowired
	private AlbumService albumService;
	@Autowired
	private StudioMapper studioMapper;
	@GetMapping("/studio/{studioId}")
	public List<AlbumModel> getAllByStudioId(@PathVariable int studioId){
		return albumService.getAlbumsByStudioId(studioId);
	}

	@GetMapping("/studio/current")
	public List<AlbumModel> getAllByCurrentStudio(Authentication authentication){
		return albumService.getAlbumsByByCurrentStudio(authentication);
	}
	@PreAuthorize("hasRole('EMPLOYEE')")
	@PostMapping
	public AlbumModel createAlbum(
			@Valid @RequestBody AlbumModel model,
			Authentication authentication
	){
		Account currentAccount = (Account) authentication.getPrincipal();
		var employee = currentAccount.getEmployee();
		if(employee.getStudio() == null) throw new RecordNotFoundException("You must own or work for a studio to take this action");
		StudioModel studioModel = studioMapper.toModel(employee.getStudio());
		model.setStudio(studioModel);
		return albumService.createAlbum(model);
	}
	@PreAuthorize("hasRole('EMPLOYEE')")
	@DeleteMapping("{id}")
	public ResponseEntity deleteAlbum(
			@PathVariable int id,
			Authentication authentication
	) {
		Account currentAccount = (Account) authentication.getPrincipal();
		albumService.deleteAlbum(id, currentAccount.getEmployee());
		return ResponseEntity.ok().build();
	}

}
