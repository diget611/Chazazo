package kh.spring.chazazo.review.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import kh.spring.chazazo.review.model.dto.ReviewDto;
import kh.spring.chazazo.review.model.service.ReviewService;

@RestController
@RequestMapping
public class ReviewController {
	
	@Autowired
	private ReviewService rService;
	
	@PostMapping("/carlist/{vehicleIdx}")
	public ModelAndView insertReview(ModelAndView mv, @PathVariable int idx) {
		
	
		
		
		
		return mv;
	}
	
	@DeleteMapping("/carlist/{vehicleIdx}/remove")
	public ModelAndView deleteReview(ModelAndView mv) {
		return mv;
	}
}
