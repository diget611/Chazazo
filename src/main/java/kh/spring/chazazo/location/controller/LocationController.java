package kh.spring.chazazo.location.controller;

import java.security.Principal;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;


import kh.spring.chazazo.location.model.service.LocationService;
import kh.spring.chazazo.member.model.service.MemberService;

@RestController
public class LocationController {
	
	@Autowired
	private MemberService mService;
	
	@Autowired
	private LocationService lService;
	
	
	@GetMapping("/location/{idx}")
	public ModelAndView viewLocationOne(ModelAndView mv, @PathVariable String idx,Principal prin) {
		// 지점 상세 조회
	if(prin == null) {
		mv.addObject("noneLocation", lService.selectLocation());
		int index = Integer.parseInt(idx);
		mv.addObject("location", lService.getInfo(index));
		mv.setViewName("/location/location");
		
	}else {
		String username = prin.getName();
		mv.addObject("member",mService.selectMypageOne(username));
		mv.addObject("locationList", lService.selectLocation(username));
		
		int index = Integer.parseInt(idx);
		mv.addObject("location", lService.getInfo(index));
		mv.setViewName("/location/location");
	}
	return mv;
	}
	
	
	@GetMapping("/profile/favorites")
	//@ResponseBody
	public ModelAndView selectFavLocation(ModelAndView mv, Principal prin, String username) {
		// 관심 지점
		Map<String, Object> result = new HashMap<String,Object>();
		
		String loginId = prin.getName();
		mv.addObject("memberinfo", mService.selectMypageOne(loginId) );
		result.put("memberinfo", mService.selectMypageOne(loginId));
		mv.addObject("favLocation", lService.selectLikeLocation(loginId));
		result.put("favLocation", lService.selectLikeLocation(loginId));
	
		System.out.println(result); 
		System.out.println("favorite!!!!!!!!!!!!!!!!!!!!location");		
		mv.setViewName("/member/favorites");
		return mv;
	
	}
	
	//찜하기
	@PostMapping("profile/like")
	@ResponseBody
	public String insertFavLocation(@RequestParam(name = "locationIdx", required = false) Integer locationIdx , Principal prin) {
		int result = -1;
		String usename = prin.getName();
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("usename", usename);
		map.put("locationIdx", locationIdx);
		
		result = lService.getLike(map);
		if(result > 0) {
			lService.deleteFav(map);
		}else {
			lService.insertFavLocation(map);
		}
	
		return String.valueOf(result);
	
	}
	@DeleteMapping("/deleteLike")
	public int deleteLike(Principal prin,@RequestParam(name = "locationIdx", required = false) Integer locationIdx) {
		int result = 0;
		String usename = prin.getName();
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("usename", usename);
		map.put("locationIdx", locationIdx);
		
		System.out.println(result);
		System.out.println(locationIdx);
		result = lService.deleteFav(map);
		return result;
	}

	
}
