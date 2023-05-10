package kh.spring.chazazo.admin.report.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import kh.spring.chazazo.admin.report.model.dto.AdminReportUpdateReqDto;
import kh.spring.chazazo.admin.report.model.service.AdminReportService;
import kh.spring.chazazo.common.Pagination;

@RestController
@RequestMapping("/admin/report")
public class AdminReportController {
	
	@Autowired
	private AdminReportService service;
	
	@GetMapping("")
	public ModelAndView viewReport(ModelAndView mv, @RequestParam(required = false, defaultValue = "1") int page) {
		int count = service.reportCount();
		Pagination pagination = new Pagination();
		pagination.pageInfo(10, page, count);
		
		mv.addObject("reportList", service.selectReportList(pagination));
		mv.addObject("pagination", pagination);
		mv.setViewName("admin/report");
		return mv;
	}
	
	@GetMapping("/{idx}")
	public ModelAndView viewReportOne(ModelAndView mv, @PathVariable String idx) {
		mv.addObject("report", service.selectReportOne(idx));
		mv.setViewName("admin/reportdetails");
		return mv;
	}
	
	@PatchMapping("/return")
	public int returnReport(@RequestBody AdminReportUpdateReqDto data) {
		int result = service.returnReport(data);
		return result;
	}
	
	@PatchMapping("/confirm")
	public int confirmReport(@RequestBody AdminReportUpdateReqDto data) {
		int result = service.confirmReport(data);
		return result;
	}
	
}
