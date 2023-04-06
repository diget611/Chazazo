package kh.spring.chazazo.location.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class LocationController {
	
	@GetMapping("/location")
	public ModelAndView viewLocationList(ModelAndView mv) {
		// 지점 전체 조회
		mv.setViewName("/temp/location");
		return mv;
	}
	
	@GetMapping("/location/{idx}")
	public ModelAndView viewLocationOne(ModelAndView mv) {
		// 지점 상세 조회
		return mv;
	}
	
	@GetMapping("/profile/favorites")
	public ModelAndView likeLocationOne(ModelAndView mv) {
		// 관심 지점
		return mv;
	}
	
	// 관리자
	public ModelAndView viewInsertLocation(ModelAndView mv) {
		// 지점 등록 페이지 조회
		return mv;
	}

	// 관리자
	public ModelAndView insertLocation(ModelAndView mv) {
		// 지점 등록
		return mv;
	}

	// 관리자
	public ModelAndView viewUpdatLocation(ModelAndView mv) {
		// 지점 정보 수정 페이지 조회
		return mv;
	}
	
	// 관리자
	public ModelAndView updateLocation(ModelAndView mv) {
		// 지점 정보 수정
		return mv;
	}

	// 관리자
	public ModelAndView deleteLocation(ModelAndView mv) {
		// 지점 정보 삭제
		return mv;
	}

}
