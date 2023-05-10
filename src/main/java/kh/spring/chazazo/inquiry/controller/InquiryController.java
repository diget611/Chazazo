package kh.spring.chazazo.inquiry.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import kh.spring.chazazo.inquiry.model.dto.InquiryInsertReqDto;
import kh.spring.chazazo.inquiry.model.dto.InquiryRespDto;
import kh.spring.chazazo.inquiry.model.service.InquiryService;

@RestController
@RequestMapping("/inquiry")
public class InquiryController {

	@Autowired
	private InquiryService iService;
	
	@GetMapping("")
	public ModelAndView viewInquiry(ModelAndView mv) {
		mv.setViewName("inquiry/inquiry");
		return mv;
	}
	
	@GetMapping("/insert")
	public ModelAndView viewInsertInquiry(ModelAndView mv) {
		mv.setViewName("inquiry/inqinsert");
		return mv;
	}
	
	@GetMapping("/pageload")
	public String pageLoad(ModelAndView mv, @RequestParam(required = false) Map<String, String> data){
		List<InquiryRespDto> result = iService.selectList(data);
		return new Gson().toJson(result);
	}
	
	@PostMapping("/insert")
	public int insertInquiry(@RequestBody InquiryInsertReqDto data) {
		int result = iService.insert(data);
		return result;
	}

}
