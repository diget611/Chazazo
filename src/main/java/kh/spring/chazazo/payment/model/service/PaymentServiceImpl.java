package kh.spring.chazazo.payment.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.spring.chazazo.payment.model.dao.PaymentDao;
import kh.spring.chazazo.payment.model.dto.PaymentReqDto;


@Service
public class PaymentServiceImpl implements PaymentService {

	@Autowired
	private PaymentDao dao;
	
	@Override
	public List<PaymentReqDto> ReservationOne(int idx) {
		return dao.ReservationOne(idx);
	}

	@Override
	public List<PaymentReqDto> selectList(String username) {
		return dao.selectList(username);
	}

	@Override
	public int deleteResv(int idx) {
		return dao.deleteResv(idx);
	}

	@Override
	public int insertPayInfo(PaymentReqDto data) {
		return dao.insertPayInfo(data);
	}

}
