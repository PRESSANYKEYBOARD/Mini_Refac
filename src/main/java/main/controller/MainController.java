package main.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {

	@RequestMapping(value="/" , method =RequestMethod.GET)
	public String Index() { //사용자 콜백 메소드

		return "user/mainIndex"; // /WEB-INF/sum/input.jsp 
	}

}
