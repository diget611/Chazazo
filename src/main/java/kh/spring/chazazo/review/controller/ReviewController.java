package kh.spring.chazazo.review.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import kh.spring.chazazo.review.model.dto.ReviewDto;
import kh.spring.chazazo.review.model.service.ReviewService;

@RestController
@RequestMapping("/review")
public class ReviewController {
	
	@Autowired
	private ReviewService rService;
	
	@GetMapping("/list")
	public ModelAndView viewReviewList(ModelAndView mv) {
		mv.addObject("list", rService.selectList());
		mv.setViewName("review/list");
		return mv;
	}
	
	//특정 자동차모델에 대한 리뷰조회
	@GetMapping("/list/{vehicleidx}")
	public ModelAndView viewReivewOne(ModelAndView mv, @PathVariable int vehicleidx) {
		List<ReviewDto> reviewlist = rService.selectList(vehicleidx);
		mv.addObject("reviewlist", reviewlist);
		mv.setViewName("review/list");
		return mv;
	}
	
//	@GetMapping
	public ModelAndView insertReview(ModelAndView mv) {
		return mv;
	}
	
//	@GetMapping
	public ModelAndView deleteReview(ModelAndView mv) {
		return mv;
	}
}
