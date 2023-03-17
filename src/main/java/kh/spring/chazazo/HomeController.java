package kh.spring.chazazo;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "mainpage";
	}
	
	@GetMapping("/test/user")
	public ModelAndView getUserpage(ModelAndView mv) {
		mv.setViewName("test/user");
		return mv;
	}
	
	@GetMapping("/test/admin")
	public ModelAndView getAdminpage(ModelAndView mv) {
		mv.setViewName("test/admin");
		return mv;
	}
	
	@GetMapping("/test/manager")
	public ModelAndView getManagerpage(ModelAndView mv) {
		mv.setViewName("test/manager");
		return mv;
	}
	
	@GetMapping("/test/success")
	public ModelAndView getSuccesspage(ModelAndView mv) {
		mv.setViewName("test/success");
		return mv;
	}
	
	@GetMapping("/member/login")
	public ModelAndView getLoginpage(ModelAndView mv) {
		mv.setViewName("member/login");
		return mv;
	}
	
}
