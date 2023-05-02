package kh.spring.chazazo.vehicle.controller;

import java.security.Principal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import kh.spring.chazazo.member.model.service.MemberService;
import kh.spring.chazazo.review.model.dto.ReviewDto;
import kh.spring.chazazo.review.model.service.ReviewService;
import kh.spring.chazazo.vehicle.model.service.VehicleService;


@RestController
@RequestMapping
public class VehicleController {
	@Autowired
	private MemberService mService;
	@Autowired
	private VehicleService vService;
	@Autowired
	private ReviewService rService;

	public final static int BOARD_LIMIT = 9;
	public final static int PAGE_LIMIT = 4;

	
	@GetMapping("/carlist")
	public ModelAndView searchVehicle(ModelAndView mv,HttpServletRequest req, String page) {
		mv.setViewName("reservation/carlist");
		return mv;

	}
	
	
	@GetMapping("/carlist/{idx}")
	public ModelAndView viewVehicle(ModelAndView mv, @PathVariable String idx, Principal prin, HttpSession session) {
		int index = Integer.parseInt(idx);
		if(prin == null) {
			mv.setViewName("reservation/details");
		}else {
			String username = prin.getName();
			mv.addObject("info", mService.selectMypageOne(username));
		}
		mv.addObject("car", vService.getVehicleInfo(index));
		mv.addObject("option", vService.getOptionInfo(index));
		List<ReviewDto> rList= rService.selectOne(index);
		
		session.setAttribute("vehicleIdx", index);
		mv.addObject("rList",rList);
		mv.setViewName("reservation/details");
		
		return mv;
	}
	

	@GetMapping("/searchlist")
	@ResponseBody
	public String getList(ModelAndView mv, @RequestParam(required=false) String page
			, @RequestParam(value="typeList[]", required=false) List<String> typeList
			, @RequestParam(value="fuelList[]", required=false) List<String> fuelList, String keyword) {
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
		int pagenum = Integer.parseInt(page)*BOARD_LIMIT;
		
		search.put("page", pagenum);
		search.put("keyword", keyword);
		
		Map<String, Object> result = new HashMap<String,Object>();		
	
		result.put("carlist",vService.selectList(search));
		return new Gson().toJson(result);		
	}
	
}
