package kh.spring.chazazo.admin.controller;

import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class AdminController {
	
	// 전부 다른 테이블에서 끌어오거나 하니까 adminservice 같은건 필요없을거 같고. 다른 서비스들 주워와서 쓰면 될듯?
	
//	@GetMapping
	public ModelAndView viewStatistcs(ModelAndView mv) {
		// 통계 조회용
		return mv;
	}

}
