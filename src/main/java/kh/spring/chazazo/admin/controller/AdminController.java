package kh.spring.chazazo.admin.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
@RequestMapping("/admin")
public class AdminController {
	
	// 전부 다른 테이블에서 끌어오거나 하니까 adminservice 같은건 필요없을거 같고. 다른 서비스들 주워와서 쓰면 될듯?
	
	@GetMapping("/main")
	public ModelAndView viewStatistics(ModelAndView mv) {
		mv.setViewName("admin/main");
		return mv;
	}

}
