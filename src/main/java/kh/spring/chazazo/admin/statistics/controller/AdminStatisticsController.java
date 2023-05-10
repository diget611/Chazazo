package kh.spring.chazazo.admin.statistics.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import kh.spring.chazazo.admin.location.model.service.AdminLocationService;
import kh.spring.chazazo.admin.statistics.model.dto.AdminStatisticsReqDto;
import kh.spring.chazazo.admin.statistics.model.service.AdminStatisticsService;

@RestController
@RequestMapping("/admin/statistics")
public class AdminStatisticsController {
	
	@Autowired
	private AdminStatisticsService service;
	@Autowired
	private AdminLocationService alService;
	
	@GetMapping("")
	public ModelAndView viewStatistics(ModelAndView mv) {
		mv.setViewName("admin/statistics");
		mv.addObject("list", alService.locationList());
		return mv;
	}
	
	@PostMapping("/chart")
	public String getChart(@RequestBody AdminStatisticsReqDto data) {
		int type = data.getType();		
		if(type == 1) {
			return new Gson().toJson(service.selectSumForChart(data));
		} else {
			return new Gson().toJson(service.selectCountForChart(data));
		}
	}


}
