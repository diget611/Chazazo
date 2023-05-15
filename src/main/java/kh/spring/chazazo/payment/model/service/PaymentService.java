package kh.spring.chazazo.payment.model.service;

import java.util.List;
import java.util.Map;

import kh.spring.chazazo.common.Pagination;
import kh.spring.chazazo.location.model.dto.LocationRespDto;

import kh.spring.chazazo.payment.model.dto.PaymentReqDto;



public interface PaymentService {


	
	public List<PaymentReqDto> selectList(String username);

	//예약
	public List<PaymentReqDto> ReservationList(String username);
	
	public PaymentReqDto ReservationOne(int idx);
	public int deleteReserv(int idx);
	public LocationRespDto resvLocation(int idx);
	public List<PaymentReqDto> allResList(Map<String, Object> map);
	
	public List<PaymentReqDto> optionResList(PaymentReqDto data);
	public List<PaymentReqDto> pagingnation(Map<String, Object> map);
	public int countMember(Map<String, Object> map);
	//비회원
	public PaymentReqDto noneReser(int idx);
	public int selectNoneM(PaymentReqDto dto);

	public PaymentReqDto nmemInfo(int paymentIdx);
	
	public int insertPayInfo(PaymentReqDto data, int isMember);

	public PaymentReqDto selectNmemPayInfo(String merchantUid);

	
	

}
