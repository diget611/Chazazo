package kh.spring.chazazo.vehicle.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

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
	@ResponseBody
	public String getList(ModelAndView mv, @RequestParam(required=false) String page
			, @RequestParam(value="typeList[]", required=false) List<String> typeList, @RequestParam(value="fuelList[]", required=false) List<String> fuelList) {
		
		
		System.out.println("*********************");
		System.out.println("!!!!!typeList!!!!!!!"+typeList);
		System.out.println("!!!!!fuelList!!!!!!!"+fuelList);
		System.out.println("*********************");
		Map<String, Object> search = new HashMap<>();
		search.put("typeList", typeList);
		search.put("fuelList", fuelList);
		
		if(page == null) {
			page = "1";
		}
		
		search.put("page", Integer.parseInt(page) * BOARD_LIMIT);
		
		Map<String, Object> result = new HashMap<String,Object>();		
	
		result.put("carlist",vService.selectList(search));
		
		return new Gson().toJson(result);		
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
