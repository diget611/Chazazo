package kh.spring.chazazo.admin.reservation.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.spring.chazazo.admin.reservation.model.dao.AdminReservationDao;
import kh.spring.chazazo.admin.reservation.model.dto.AdminReservOneRespDto;
import kh.spring.chazazo.admin.reservation.model.dto.AdminReservRespDto;
import kh.spring.chazazo.common.Pagination;

@Service
public class AdminReservationServiceImpl implements AdminReservationService {
	
	@Autowired
	private AdminReservationDao dao;
	
	@Override
	public List<AdminReservRespDto> selectReservList(Pagination pagination) {
		return dao.selectReservList(pagination);
	}
	@Override
	public List<AdminReservRespDto> selectReservList(Map<String, Integer> data) {
		return dao.selectReservList(data);
	}
	@Override
	public AdminReservOneRespDto selectReservOne(int idx) {
		return dao.selectReservOne(idx);
	}
	@Override
	public int cancelReservation(int idx) {
		return dao.cancelReservation(idx);
	}
	@Override
	public int reservCount() {
		return dao.reservCount();
	}
	
}
