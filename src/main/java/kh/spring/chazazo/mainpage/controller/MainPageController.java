package kh.spring.chazazo.mainpage.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import kh.spring.chazazo.mainpage.service.MainPageService;

@RestController
public class MainPageController {
	
	@Autowired
	private MainPageService mService;
	
	@GetMapping(value = {"/", "/main"})
	public ModelAndView viewMain(ModelAndView mv) {
		mv.addObject("review", mService.reviewCount());
		mv.addObject("reserv", mService.reservCount());
		mv.addObject("vehicle", mService.vehicleCount());
		mv.addObject("location", mService.locationCount());
				
		mv.setViewName("main");
		return mv;
	}

}
