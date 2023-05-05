package kh.spring.chazazo.review.controller;




import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import kh.spring.chazazo.member.model.service.MemberService;
import kh.spring.chazazo.payment.model.service.PaymentService;
import kh.spring.chazazo.review.model.dto.ReviewDto;
import kh.spring.chazazo.review.model.service.ReviewService;



@RestController
@RequestMapping
public class ReviewController {
	@Autowired
	private MemberService mService;
	
	@Autowired
	private ReviewService rService;
	@Autowired
	private PaymentService pService;
	

	
	@PostMapping("/post")
	public int insertReview(@RequestBody ReviewDto data) {
		int chk = rService.checkResv(data);
		if (chk < 1) {
			int result =0;
			return result;
		} else {
		int result = rService.insertReview(data);
		return result;
		}
	}
	
	@PostMapping("/insertLike") 
	public int insertLike(ReviewDto data) {
		int result = rService.insertLike(data);
		return result;
	}
	@PostMapping("/updateReview") 
	public int updateReview(ReviewDto data) {
		int result = rService.updateReview(data);
		return result;
	}
	
	
	@DeleteMapping("/deleteReview")
	public int deleteReview(int idx) {
		int result = rService.deleteReview(idx);
		System.out.println(idx);
		return result;
	}
	
	@GetMapping ("/reportReview/{idx}")
	public ModelAndView reportReview(ModelAndView mv, @PathVariable String idx) {
		int index = Integer.parseInt(idx);
		mv.addObject("r", rService.selectReview(index));
		mv.setViewName("review/reportReview");
		return mv;
	}
	
	@PostMapping ("/postReport")
	public int insertReport(@RequestBody ReviewDto data) {
		System.out.println("++++++++"+data);
	int result = rService.insertReport(data);
		return result;
	}
	
	
	
	//마이페이지 나의리뷰 목록
	@GetMapping("/myReview")
	public ModelAndView selectMyReview( Principal prin, ModelAndView mv) {
		
		
		String loginId = prin.getName();
		mv.addObject("memberinfo", mService.selectMypageOne(loginId));
		mv.addObject("reservation", pService.selectList(loginId));
		mv.addObject("myReview",rService.selectMyReview(loginId));
		mv.setViewName("member/myReview");
		return mv;
	}
	
	
	
	
	
	
	
}
