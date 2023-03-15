package kh.spring.chazazo.notice.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kh.spring.chazazo.notice.model.service.NoticeSerivce;
import kh.spring.chazazo.notice.model.service.NoticeServiceImpl;
import kh.spring.chazazo.notice.model.vo.NoticeVo;

@Controller
@RequestMapping("/board")
public class NoticeController {
	
	private NoticeSerivce service;
	
	public int insert(NoticeVo vo) {
		int result = 0;
		return result;
	}
	public int update(NoticeVo vo) {
		int result = 0;
		return result;
	}
	public int delete(int boardNum) {
		int result = 0;
		return result;
	}
	
}
