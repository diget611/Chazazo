package kh.spring.chazazo.payment.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.spring.chazazo.location.model.dto.LocationRespDto;
import kh.spring.chazazo.payment.model.dao.PaymentDao;
import kh.spring.chazazo.payment.model.dto.PaymentInfoDto;
import kh.spring.chazazo.payment.model.dto.PaymentReqDto;


@Service
public class PaymentServiceImpl implements PaymentService {

	@Autowired
	private PaymentDao dao;
	
	
	@Override
	public List<PaymentReqDto> selectList(String username) {
		return dao.selectList(username);
	}



	@Override
	public int insertPayInfo(PaymentReqDto data, int isMember) {
		int result = dao.insertPayInfo(data);
		int result2 = dao.updateCoupon(data); 
		if(result == 1 && isMember == 0) {
			dao.insertNmemInfo(data);
		}		
		return result;
	}



	@Override
	public PaymentReqDto noneReser(int paymentIdx) {
		return dao.noneReser(paymentIdx);
	}

	@Override
	public PaymentReqDto selectNoneM(PaymentReqDto dto) {
		return dao.selectNoneM(dto);
	}

	

	@Override
	public List<PaymentReqDto> ReservationList(int idx) {
		return null;
	}

	@Override
	public PaymentReqDto ReservationOne(int idx) {
		return dao.ReservationOne(idx);
	}

	@Override
	public LocationRespDto resvLocation(int idx) {
		return dao.resvLocation(idx);
	}

	@Override
	public int deleteReserv(int idx) {
		return dao.deleteReserv(idx);
	}
}
