package kh.spring.chazazo.payment.model.service;

import java.util.List;

import kh.spring.chazazo.location.model.dto.LocationRespDto;
import kh.spring.chazazo.payment.model.dto.PaymentInfoDto;
import kh.spring.chazazo.payment.model.dto.PaymentReqDto;



public interface PaymentService {
	
//	public List<ReservationRespDto> selectList();
	

	
	public List<PaymentReqDto> selectList(String username);

	public List<PaymentReqDto> ReservationList(int idx);
	public PaymentReqDto ReservationOne(String idx);
	
	public int deleteResv(int idx);
	public int insertPayInfo(PaymentReqDto data, int isMember);


	public LocationRespDto resvLocation(String idx);
	
	
	
	public PaymentReqDto noneReser(int idx);
	
	public PaymentReqDto selectNoneM(PaymentReqDto dto);
	

}
