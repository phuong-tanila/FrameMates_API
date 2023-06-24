package fu.training.FrameMates_API.servicepack;

import fu.training.FrameMates_API.servicepack.ServicePack;
import fu.training.FrameMates_API.servicepack.ServicePackService;
import fu.training.FrameMates_API.share.exceptions.ExceptionResponse;
import fu.training.FrameMates_API.share.exceptions.RecordNotFoundException;
import fu.training.FrameMates_API.share.helpers.PaginationHelper;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@Slf4j
@CrossOrigin
@RequestMapping("/services")
public class ServicePackController {

	@Autowired
	private ServicePackService servicePackService;

	@Autowired
	private ServicePackMapper servicePackMapper;
	@GetMapping("")
	public ResponseEntity getAll(
			@RequestParam(name = "sort", defaultValue = "") String[] sortOrders,
			@RequestParam(name = "pageSize", defaultValue = "16") int pageSize,
			@RequestParam(name = "pageNo", defaultValue = "0") int pageNo

	){
		Pageable pageable = PaginationHelper.getPageable(pageNo, pageSize, sortOrders);
		Page<ServicePack> page = null;
		try{
			page = servicePackService.getAll(pageable);
			if(page.isEmpty()) {

			}
			page.getContent().forEach(System.out::println);
		}catch (Exception ex){
			ex.printStackTrace();
		}
		List<ServicePackModel> result = servicePackMapper.toModels(page.getContent());
		return new ResponseEntity<List<ServicePackModel>>(result, HttpStatus.OK);
	}

	@GetMapping("/{serviceId}")
	public ResponseEntity getById(@PathVariable int serviceId){
		try{
			var entity = servicePackService.findById(serviceId);
			return new ResponseEntity(entity, HttpStatus.OK);
		}catch (RecordNotFoundException ex){
			return new ResponseEntity<ExceptionResponse>(
					new ExceptionResponse("Record not found", ex.getMessage())
					, HttpStatus.NOT_FOUND
			);
		}
	}


}
