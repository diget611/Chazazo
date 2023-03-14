package kh.spring.chazazo.review.controller;

import java.sql.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kh.spring.chazazo.review.model.service.ReviewService;
import kh.spring.chazazo.review.vo.ReviewVo;

@Controller
@RequestMapping("/review")
public class ReviewController {

	@Autowired
		private ReviewService service;

		@GetMapping("/list")
		public ModelAndView getReviewList(ModelAndView mv) {
			mv.addObject("list", service.selectList());
			mv.setViewName("review/list");
			return mv;
		}





		@GetMapping("/insert")
		public ModelAndView insertMember(ModelAndView mv) {
			ReviewVo vo = new ReviewVo();
			vo.setIdx(2);
			vo.setVehicleIdx(1);
			vo.setContent("리뷰내용");
			vo.setDate(new Date(20230314));
			vo.setReviewlike(2);
			 service.insert(vo);
			mv.setViewName("review/insert");
			return mv;
		}



	





	@GetMapping(value="/update")
		public void updateReview() {
		
			int Idx = 1;
	        int vehicleIdx = 1;
			String Content = "수정내용";
			Date date = null;
	        int like =3;

			ReviewVo vo = new ReviewVo();
			vo.setIdx(2);
			vo.setVehicleIdx(2);
	        vo.setContent("리뷰업뎃");
	        vo.setDate(date);
	        vo.setReviewlike(2);

	        service.update(vo);

	}

	





		@GetMapping(value="/delete")
		public void viewDeleteReview() {
			int idx =2;
			service.delete(idx);
		
		}	



}

