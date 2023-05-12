package kh.spring.chazazo.review.controller;




import java.security.Principal;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import kh.spring.chazazo.common.Pagination;
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
	
	
	@PatchMapping("/deleteReview")
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
	public ModelAndView selectMyReview( Principal prin, ModelAndView mv, @RequestParam(required = false, defaultValue = "1") int page) {
		String username = prin.getName();
		Map<String, Object> map = new HashMap<String, Object>();
		
		int count = rService.countReview(username);
		Pagination pagination = new Pagination();
		pagination.pageInfo(10, page, count);
	
		map.put("username", username);
		map.put("pagination", pagination);
		
		mv.addObject("memberinfo", mService.selectMypageOne(username));
		mv.addObject("reservation", pService.selectList(username));
		mv.addObject("myReview",rService.selectMyReview(map));
		mv.addObject("pagination", pagination);
		mv.addObject("countReview", rService.countReview(username));
		mv.setViewName("member/myReview");
		return mv;
	}
	
	
	
	
	
	
	
}
