package kh.spring.chazazo.location.controller;

import java.security.Principal;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import kh.spring.chazazo.location.model.dto.LocationReqDto;
import kh.spring.chazazo.location.model.service.LocationService;
import kh.spring.chazazo.member.model.service.MemberService;

@RestController
public class LocationController {
	
	@Autowired
	private MemberService mService;
	
	@Autowired
	private LocationService lService;
	
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
	public ModelAndView selectFavLocation(ModelAndView mv, Principal prin, String username) {
		// 관심 지점
//		Map<String, Object> result = new HashMap<String,Object>();
//		
//		String loginId = prin.getName();
//		mv.addObject("memberinfo", mService.selectMypageOne(loginId) );
//		result.put("memberinfo", mService.selectMypageOne(loginId));
//		mv.addObject("favLocation", lService.selectLikeLovation(loginId));
//		result.put("favLocation", lService.selectLikeLovation(loginId));
//		
//		System.out.println(result);
//		System.out.println("favorite!!!!!!!!!!!!!!!!!!!!location");
//		
//		return new Gson().toJson(result);
		
		String loginId = prin.getName();
		
		mv.addObject("memberinfo", mService.selectMypageOne(loginId) );
		mv.addObject("favLocation", lService.selectLikeLocation(loginId));
		mv.setViewName("/member/favorites");
		System.out.println(loginId);
		return mv;
	}
	
	//찜하기
	@PostMapping("profile/favorites")
	@ResponseBody
	public int insertFavLocation(@RequestBody LocationReqDto dto) {
		
		int result = lService.insertFavLocation(dto);
		return result;
	}
	
	@DeleteMapping("profile/favorites")
	public int deleteFavLocation(int idx) {
		int result = lService.deleteFav(idx);
		return result;
	}
}
