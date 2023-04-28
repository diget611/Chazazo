package kh.spring.chazazo.payment.model.service;

import java.util.List;

import kh.spring.chazazo.location.model.dto.LocationRespDto;
import kh.spring.chazazo.payment.model.dto.PaymentInfoDto;
import kh.spring.chazazo.payment.model.dto.PaymentReqDto;



public interface PaymentService {
	
//	public List<ReservationRespDto> selectList();
	

	
	public List<PaymentReqDto> selectList(String username);

	public List<PaymentReqDto> ReservationList(int idx);
	public PaymentReqDto ReservationOne(int idx);
	
	public int deleteResv(int idx);
	public int insertPayInfo(PaymentReqDto data, int isMember);


	public LocationRespDto resvLocation(int idx);
	public PaymentReqDto reservInsurace(int idx);
	
	
	public PaymentReqDto noneReser(int idx);
	
	public PaymentReqDto selectNoneM(PaymentReqDto dto);
	

}
