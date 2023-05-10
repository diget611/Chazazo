package kh.spring.chazazo.admin.reservation.model.service;

import java.util.List;
import java.util.Map;

import kh.spring.chazazo.admin.reservation.model.dto.AdminReservOneRespDto;
import kh.spring.chazazo.admin.reservation.model.dto.AdminReservRespDto;
import kh.spring.chazazo.common.Pagination;

public interface AdminReservationService {
	
	public int reservCount();
	public List<AdminReservRespDto> selectReservList(Pagination pagination);
	public List<AdminReservRespDto> selectReservList(Map<String, Integer> data);
	public AdminReservOneRespDto selectReservOne(int idx);
	public int cancelReservation(int idx);
	
}
