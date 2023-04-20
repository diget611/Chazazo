//package kh.spring.chazazo.reservation.controller;
//
//import java.security.Principal;
//import java.util.HashMap;
//import java.util.List;
//import java.util.Map;
//
//import javax.servlet.http.HttpSession;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.web.bind.annotation.DeleteMapping;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.PatchMapping;
//import org.springframework.web.bind.annotation.PathVariable;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.ResponseBody;
//import org.springframework.web.bind.annotation.RestController;
//import org.springframework.web.servlet.ModelAndView;
//
//import com.google.gson.Gson;
//
//import kh.spring.chazazo.member.model.service.MemberService;
//import kh.spring.chazazo.reservation.model.dto.ReservationReqDto;
//import kh.spring.chazazo.reservation.model.dto.ReservationRespDto;
//import kh.spring.chazazo.reservation.model.service.ReservationService;
//import kh.spring.chazazo.vehicle.model.dto.VehicleRespDto;
//
//@RestController
//
//
//public class ReservationController {
//	
//	@Autowired
//	private ReservationService rService;
//	@Autowired
//	private MemberService mService;
//	
//	
//	
////	관리자
//	public ModelAndView viewReservationList(ModelAndView mv) {
//		// 관리자 예약 리스트 조회
//		// 관리자가 조건별로 검색한 예약 정보도 필요하지 않나?(메소드 추가)
//		return mv;
//	}
//	
//	@GetMapping("/profile/reservation")
//	public String viewReservationListUser(ModelAndView mv, Principal prin, ReservationReqDto resdto, 
//												String username) {
//		// 유저 예약 리스트 조회
//		System.out.println("ddddddddsssssssssdddddddd");
//		
//		Map<String, Object> result = new HashMap<String,Object>();
//		System.out.println(result);
//		if(prin == null) {
//			mv.setViewName("member/mypage");
//			return "1";
//			
//		}else {
//			String loginId = prin.getName();
//			mv.addObject("reservation", rService.selectList(loginId));
//			result.put("reservation", rService.selectList(loginId));
//			
//			mv.addObject("memberinfo", mService.selectMypageOne(loginId));
//			result.put("memberinfo", mService.selectMypageOne(loginId));
//			System.out.println(result);
//			System.out.println("ddddddd송공d");
//			return new Gson().toJson(result);
//		}
//		
//	}	
//
//	
////	Map<String, Object> result = new HashMap<String,Object>();	
////	
////	if(prin == null) {	
////		mv.setViewName("member/history");
////		return "1";
////	}else {
////		String username = prin.getName();
////		mv.addObject("info", mService.selectMypageOne(username));
////		result.put("info",mService.selectMypageOne(username));
////		mv.addObject("reservation", rService.ReservationOne(index));
////		return new Gson().toJson(result);
////	}
////	
//	
//	
//	
//	@GetMapping("/nonereservation")
//	public String viewNoneReservationListUser(ModelAndView mv, int idx) {
//		// 비회원 예약 조회 조회
//		
//		
//		
//		Map<String, Object> result = new HashMap<String,Object>();
//		System.out.println(result);
//	
//			
//			mv.addObject("reservation", rService.ReservationOne(idx));
//			result.put("reservation", rService.ReservationOne(idx));
//			System.out.println(result);
//			System.out.println("ddddddd송공d");
//			return new Gson().toJson(result);
//		}
//	
//
//	@GetMapping("/profile/reservation/{idx}")
//	public ModelAndView viewReservationOne(ModelAndView mv
//										   , @PathVariable String idx, Principal prin) {
//		// 예약 정보 상세 조회
//		
//		int index = Integer.parseInt(idx);
//		if(prin == null) {
//			mv.setViewName("member/history");
//		}else{
//			System.out.println("ddddddddd");
//			String loginId = prin.getName();
//			mv.addObject("memberinfo", mService.selectMypageOne(loginId) );
//			mv.addObject("reservation", rService.ReservationOne(index) );
//			mv.setViewName("member/history");
//		}
//		
//		
//		
//	return mv;	
//
//	
//	}
//
//	@PatchMapping("/profile/reservation/{idx}")
//	public int updateReservation(ModelAndView mv) {
//		// 예약 정보 수정
//		int result=0;
//		
//		return result;
//	}
//	
//	@DeleteMapping("/profile/reservation/{idx}")
//	@ResponseBody
//	public ModelAndView deleteReservation(ModelAndView mv, @PathVariable String idx) {
//		
//		// 예약 정보 삭제
//		int ridx = Integer.parseInt(idx);
//		rService.deleteResv(ridx);
//		System.out.println(idx);
//		System.out.println(ridx);
//		
//		return mv;
//	}
//}
