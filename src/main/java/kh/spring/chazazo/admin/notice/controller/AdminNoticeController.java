package kh.spring.chazazo.admin.notice.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import kh.spring.chazazo.admin.notice.model.dto.AdminNoticeInsertReqDto;
import kh.spring.chazazo.admin.notice.model.dto.AdminNoticeUpdateReqDto;
import kh.spring.chazazo.admin.notice.model.service.AdminNoticeService;
import kh.spring.chazazo.common.Pagination;

@RestController
@RequestMapping("/admin/notice")
public class AdminNoticeController {
	
	@Autowired
	private AdminNoticeService service;
	
	@GetMapping("")
	public ModelAndView viewNotice(ModelAndView mv, @RequestParam(required = false, defaultValue = "1") int page) {
		int count = service.noticeCount();
		Pagination pagination = new Pagination();
		pagination.pageInfo(10, page, count);
		
		mv.addObject("pagination", pagination);
		mv.addObject("noticeList", service.selectNoticeList(pagination));
		mv.setViewName("admin/notice");
		return mv;
	}
	
	@GetMapping("/{idx}")
	public ModelAndView viewNoticeOne(ModelAndView mv, @PathVariable String idx) {
		mv.addObject("notice", service.selectNoticeOne(idx));
		mv.setViewName("admin/noticedetails");
		return mv;
	}
	
	@GetMapping("/insert")
	public ModelAndView viewInsertNotice(ModelAndView mv) {
		mv.setViewName("admin/noticeinsert");
		return mv;
	}
	
	@PostMapping("/insert")
	public int insertNotice(@RequestBody AdminNoticeInsertReqDto data) {
		int result = service.insertNotice(data); 
		return result;
	}
	
	@PatchMapping("/update")
	public int updateNotice(@RequestBody AdminNoticeUpdateReqDto data) {
		int result = service.updateNotice(data);
		return result;
	}
	
	@PatchMapping("/delete")
	public int deleteNotice(int idx) {
		int result = service.deleteNotice(idx);
		return result;
	}

}
