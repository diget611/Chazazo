package kh.spring.chazazo.admin.reservation.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import kh.spring.chazazo.admin.reservation.model.service.AdminReservationService;
import kh.spring.chazazo.common.Pagination;

@RestController
@RequestMapping("/admin/reservation")
public class AdminReservationController {
	
	@Autowired
	private AdminReservationService service;
	
	@GetMapping("")
	public ModelAndView viewReservation(ModelAndView mv, @RequestParam(required = false, defaultValue = "1") int page) {
		int count = service.reservCount();
		Pagination pagination = new Pagination();
		pagination.pageInfo(10, page, count);
		
		mv.addObject("reservList", service.selectReservList(pagination));
		mv.addObject("pagination", pagination);
		mv.setViewName("admin/reservation");
		return mv;
	}
	
	@GetMapping("/{idx}")
	public ModelAndView viewReservaitonOne(ModelAndView mv, @PathVariable int idx) {
		mv.addObject("reserv", service.selectReservOne(idx));
		mv.setViewName("admin/reservationdetails");
		return mv;
	}
	
	@PatchMapping("/cancel")
	public int cancelReservation(int idx) {
		int result = service.cancelReservation(idx);
		return result;
	}
	
}
