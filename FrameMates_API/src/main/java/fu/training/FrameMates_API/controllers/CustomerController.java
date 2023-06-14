package fu.training.FrameMates_API.controllers;


import fu.training.FrameMates_API.services.CustomerService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@Slf4j
@CrossOrigin
@RequestMapping("/")
public class CustomerController {

	@Autowired
	private CustomerService customerService;

}