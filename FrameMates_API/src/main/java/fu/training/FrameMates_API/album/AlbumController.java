package fu.training.FrameMates_API.album;

import fu.training.FrameMates_API.account.Account;
import fu.training.FrameMates_API.album.AlbumService;
import fu.training.FrameMates_API.servicepack.ServicePackModel;
import fu.training.FrameMates_API.share.exceptions.RecordNotFoundException;
import jakarta.validation.Valid;
import jdk.jshell.spi.ExecutionControl;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.*;

@RestController
@Slf4j
@CrossOrigin
@RequestMapping("/api/album")
public class AlbumController {

	@Autowired
	private AlbumService albumService;

	@PreAuthorize("hasRole('EMPLOYEE')")
	@PostMapping
	public AlbumModel createAlbum(
			@Valid @RequestBody AlbumModel model,
			Authentication authentication
	){
		Account currentAccount = (Account) authentication.getPrincipal();

		return albumService.createAlbum(model, currentAccount.getEmployee());
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
