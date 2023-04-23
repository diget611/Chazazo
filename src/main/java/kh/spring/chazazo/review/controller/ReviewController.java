package kh.spring.chazazo.review.controller;


import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import kh.spring.chazazo.review.model.dto.ReviewDto;
import kh.spring.chazazo.review.model.service.ReviewService;

@RestController
@RequestMapping
public class ReviewController {
	
	
	@Autowired
	private ReviewService rService;
	
//	@GetMapping("/getReview")
//	public String getReview(ModelAndView mv, String vehicleIdx) {
////		mv.addObject("review",rService.selectOne(vehicleIdx));
////		mv.setViewName("reservation/details");
//		Map<String, Object> result = new HashMap<String,Object>();		
//		
//		result.put("review",rService.selectOne(vehicleIdx));
//		
//		return new Gson().toJson(result);
////		return mv;
//	}
	
	@PostMapping("/postReview")
	public int insertReview(@RequestBody ReviewDto data) {
	
		System.out.println("data######:" +data);
		int result = rService.insertReview(data);
		return result;
	}
	
	@DeleteMapping("/carlist/{vehicleIdx}/remove")
	public ModelAndView deleteReview(ModelAndView mv) {
		return mv;
	}
}
