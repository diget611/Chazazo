package kh.spring.chazazo.review.controller;


import java.security.Principal;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import kh.spring.chazazo.member.model.service.MemberService;
import kh.spring.chazazo.review.model.dto.ReviewDto;
import kh.spring.chazazo.review.model.service.ReviewService;

@RestController
@RequestMapping
public class ReviewController {
	
	@Autowired
	private MemberService mService;
	
	@Autowired
	private ReviewService rService;
	
	
	@GetMapping("/getMemberInfo")
	@ResponseBody
	public ModelAndView getMemberInfo(Principal prin,ModelAndView mv) {
		String username = prin.getName();
		mv.addObject("info", mService.selectMypageOne(username));
		System.out.println("username::::::::::"+username);
		
		mv.setViewName("reservation/details");
		return mv;
	}
	
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
