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
	public int deleteResv(int idx) {
		return dao.deleteResv(idx);
	}

	@Override
	public int insertPayInfo(PaymentReqDto data, int isMember) {
		int result = dao.insertPayInfo(data);
		if(result == 1 && isMember == 0) {
			dao.insertNmemInfo(data);
		}		
		return result;
	}



	@Override
	public PaymentReqDto noneReser(int paymentIdx) {
		// TODO Auto-generated method stub
		return dao.noneReser(paymentIdx);
	}

	@Override
	public PaymentReqDto selectNoneM(PaymentReqDto dto) {
		// TODO Auto-generated method stub
		return dao.selectNoneM(dto);
	}

	@Override
	public LocationRespDto resvLocation(String idx) {
		return dao.resvLocation(idx);

	}

	@Override
	public List<PaymentReqDto> ReservationList(int idx) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public PaymentReqDto ReservationOne(String idx) {
	return dao.ReservationOne(idx);
	}
}
