package kh.spring.chazazo.reservation.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.spring.chazazo.reservation.model.dao.ReservationDao;
import kh.spring.chazazo.reservation.model.dto.ReservationReqDto;
import kh.spring.chazazo.reservation.model.dto.ReservationRespDto;

@Service
public class ReservationServiceImpl implements ReservationService {

	@Autowired
	private ReservationDao dao;
	
	
	
//	public List<ReservationRespDto> selectList() {
//		return dao.selectList();
//	}

	@Override
	public List<ReservationRespDto> ReservationOne(int idx) {
		
		return dao.ReservationOne(idx);
	}

	@Override
	public List<ReservationRespDto> selectList(String username) {
		return dao.selectList(username);
	}

	
	//예약내역 삭제
	@Override
	public int deleteResv(int idx) {
		return dao.deleteResv(idx);
	}


//	@Override
//	public int insertPayInfo(String name) {
//		// TODO Auto-generated method stub
//		return dao.insertPayInfo(name);
//	}




	@Override
	public int insertPayInfo(Map<String, String> data) {
		return dao.insertPayInfo(data);
	}




	
	

}
