package kh.spring.chazazo.admin.request.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import kh.spring.chazazo.admin.request.model.service.AdminRequestService;
import kh.spring.chazazo.common.Pagination;

@RestController
@RequestMapping("/admin/request")
public class AdminRequestController {
	
	@Autowired
	private AdminRequestService service;
	
	@GetMapping("")
	public ModelAndView viewRequest(ModelAndView mv, @RequestParam(required = false, defaultValue = "1") int page) {
		int count = service.requestCount();
		Pagination pagination = new Pagination();
		pagination.pageInfo(10, page, count);
		
		mv.addObject("pagination", pagination);
		mv.addObject("requestList", service.selectRequestList(pagination));
		mv.setViewName("admin/request");
		return mv;
	}
	
	@GetMapping("/request/{idx}")
	public ModelAndView viewRequestOne(ModelAndView mv, @PathVariable String idx) {
		mv.addObject("request", service.selectRequestOne(idx));
		mv.setViewName("admin/requestdetails");
		return mv;
	}
	
	@PostMapping("/")
	public int insertRequest(@RequestParam String idx, @RequestParam String answer) {
		Map<String, String> data = new HashMap<String, String>();
		data.put("idx", idx);
		data.put("answer", answer);
		
		int result = service.insertAnswer(data, idx);
		
		return result;
	}
	
	@PatchMapping("/")
	public int updateRequest(@RequestParam String idx, @RequestParam String answer) {
		Map<String, String> data = new HashMap<String, String>();
		data.put("idx", idx);
		data.put("answer", answer);
		
		int result = service.updateAnswer(data, idx);
		
		return result;
	}
	
	@DeleteMapping("/")
	public int deleteRequest(@RequestParam String idx) {
		int result = service.deleteRequest(idx);
		return result;
	}
	
}
