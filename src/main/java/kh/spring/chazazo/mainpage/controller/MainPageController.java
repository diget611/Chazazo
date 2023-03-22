package kh.spring.chazazo.mainpage.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class MainPageController {
	
	@GetMapping(value = {"/", "/main"})
	public ModelAndView viewMain(ModelAndView mv) {
		mv.setViewName("main");
		return mv;
	}

}
