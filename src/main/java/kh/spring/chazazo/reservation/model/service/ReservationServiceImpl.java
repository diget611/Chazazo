package kh.spring.chazazo.reservation.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.spring.chazazo.reservation.model.dao.ReservationDao;
import kh.spring.chazazo.reservation.model.dto.ReservationReqDto;
import kh.spring.chazazo.reservation.model.dto.ReservationRespDto;

@Service
public class ReservationServiceImpl implements ReservationService {

	@Autowired
	private ReservationDao dao;
	
	
	
	public List<ReservationRespDto> selectList() {
		return dao.selectList();
	}

	@Override
	public ReservationRespDto selectOne(int idx) {
		// TODO Auto-generated method stub
		return dao.selectOne(idx);
	}




	
	

}
