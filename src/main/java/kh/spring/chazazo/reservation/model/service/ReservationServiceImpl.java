package kh.spring.chazazo.reservation.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.spring.chazazo.reservation.model.dao.ReservationDao;
import kh.spring.chazazo.reservation.model.dto.ReservationReqDto;

@Service
public class ReservationServiceImpl implements ReservationService {

	@Autowired
	private ReservationDao dao;
	
	@Override
	public ReservationReqDto reservaionListUser(int idx) {
		// TODO Auto-generated method stub
		return dao.reservaionListUser(idx);
	}



	
	

}
