package kh.spring.chazazo.payment.model.service;

import java.util.List;

import kh.spring.chazazo.payment.model.dto.PaymentReqDto;



public interface PaymentService {
	
//	public List<ReservationRespDto> selectList();
	

	public List<PaymentReqDto> ReservationOne(int idx);
	public List<PaymentReqDto> selectList(String username);
	public int deleteResv(int idx);
	public int insertPayInfo(PaymentReqDto data);




}
