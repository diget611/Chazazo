package kh.spring.chazazo.payment.model.service;

import java.util.List;

import kh.spring.chazazo.location.model.dto.LocationRespDto;
import kh.spring.chazazo.payment.model.dto.PaymentInfoDto;
import kh.spring.chazazo.payment.model.dto.PaymentReqDto;



public interface PaymentService {
	
//	public List<ReservationRespDto> selectList();
	

	
	public List<PaymentReqDto> selectList(String username);

	//예약
	public List<PaymentReqDto> ReservationList(int idx);
	public PaymentReqDto ReservationOne(int idx);
	public int deleteReserv(int idx);
	public LocationRespDto resvLocation(int idx);
	

	//비회원
	public PaymentReqDto noneReser(int idx);
	public PaymentReqDto selectNoneM(PaymentReqDto dto);

	
	
	public int insertPayInfo(PaymentReqDto data, int isMember);

	
	

}
