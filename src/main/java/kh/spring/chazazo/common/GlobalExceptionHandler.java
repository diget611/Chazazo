package kh.spring.chazazo.common;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

@ControllerAdvice
public class GlobalExceptionHandler {
	
	@ExceptionHandler(Exception.class)
	public ModelAndView memberExceptionHandler(Exception e) {
		e.printStackTrace();
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("msg", e.getMessage() + "오류가       발생했습니다. 다시 시도해주세요.");
		mv.setViewName("error/error500");
		
		return mv;
	}
}
