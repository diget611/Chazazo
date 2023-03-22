package kh.spring.chazazo.review.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import kh.spring.chazazo.review.model.service.ReviewService;

@RestController
@RequestMapping("/review")
public class ReviewController {
	
	@Autowired
	private ReviewService rService;
	
	@PostMapping("/carlist/{vehicleIdx}")
	public ModelAndView insertReview(ModelAndView mv) {
		// 리뷰 점수 추가하면서 평균 별점 업데이트 동시에 진행 -> ajax
		return mv;
	}
	
	@DeleteMapping("/carlist/{vehicleIdx}/remove")
	public ModelAndView deleteReview(ModelAndView mv) {
		return mv;
	}
}
