package kh.spring.chazazo.vehicle.controller;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import kh.spring.chazazo.location.model.dto.LocationReqDto;
import kh.spring.chazazo.location.model.dto.LocationRespDto;
import kh.spring.chazazo.location.model.service.LocationService;
import kh.spring.chazazo.vehicle.model.dto.VehicleReqDto;
import kh.spring.chazazo.vehicle.model.dto.VehicleRespDto;
import kh.spring.chazazo.vehicle.model.service.VehicleService;


@RestController
@RequestMapping
public class VehicleController {
	
	@Autowired
	private VehicleService vService;

	public final static int BOARD_LIMIT = 9;
	public final static int PAGE_LIMIT = 4;

	
	@GetMapping("/carlist")
	public ModelAndView searchVehicle(ModelAndView mv,HttpServletRequest req, String page) {
		// 메인페이지 / 예약페이지 / 결제페이지 차량 정보 검색
	
		
		if(page == null) {
			page = "1";
		}
		System.out.println("###########################");
		System.out.println(page);
		System.out.println("###########################");
		int currentPage = Integer.parseInt(page);
		int totalCnt = vService.selectOneCount();
		int totalpage =(totalCnt% BOARD_LIMIT==0)? 
						(totalCnt / BOARD_LIMIT): 
						(totalCnt / BOARD_LIMIT)+1;
		int startpage =(currentPage %PAGE_LIMIT == 0 )?
						(currentPage /PAGE_LIMIT -1)*PAGE_LIMIT +1 :
						(currentPage /PAGE_LIMIT   )*PAGE_LIMIT +1 ;
		int endpage = (startpage +PAGE_LIMIT > totalpage)?
						totalpage :
						(startpage +PAGE_LIMIT);

	
		Map<String, Integer> map = new HashMap<String,Integer>();
		map.put("totalpage", totalpage);
		map.put("startpage", startpage);
		map.put("endpage", endpage);
		map.put("currentPage", currentPage);
		mv.addObject("pageInfo", map);
		
		mv.addObject("carlist", vService.selectPageList(currentPage, BOARD_LIMIT));
		mv.setViewName("reservation/carlist");
		return mv;

	}
	
	
	@GetMapping("/carlist/{idx}")
	public ModelAndView viewVehicle(ModelAndView mv, @PathVariable int idx) {
		// 차량 정보랑 리뷰랑 동시에
		mv.addObject("car", vService.getVehicleInfo(idx));
		mv.addObject("option", vService.getOptionInfo(idx));
		mv.setViewName("reservation/details");

		
		return mv;
	}
	
	@GetMapping("/test")
	public String cartypeTest(ModelAndView mv, @RequestParam(value="carTypeList[]") List<String> objParams) {
		System.out.println(objParams);
		return null;
	}
	
	
	// 관리자
	public ModelAndView viewVehicleList(ModelAndView mv) {
		// 관리자 페이지 차량 관리
		return mv;
	}
	
	// 관리자
	public ModelAndView viewVehicleOne(ModelAndView mv) {
		// 관리자 페이지 차량 관리 / 예약, 결제 페이지 차량 정보 출력
		return mv;
	}
	// 관리자
	public ModelAndView viewInsertVehicle(ModelAndView mv) {
		// 관리자 페이지 차량 관리
		return mv;
	}
	// 관리자
	public ModelAndView insertVehicle(ModelAndView mv) {
		// 관리자 페이지 차량 관리
		return mv;
	}
	// 관리자
	public ModelAndView viewUpdateVehicle(ModelAndView mv) {
		// 관리자 페이지 차량 관리
		return mv;
	}
	// 관리자
	public ModelAndView updateVehicle(ModelAndView mv) {
		// 관리자 페이지 차량 관리
		return mv;
	}
	// 관리자
	public ModelAndView deleteVehicle(ModelAndView mv) {
		// 관리자 페이지 차량 관리
		return mv;
	}
	
}
