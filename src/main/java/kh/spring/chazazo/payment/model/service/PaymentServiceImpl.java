package kh.spring.chazazo.payment.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.spring.chazazo.common.Pagination;
import kh.spring.chazazo.location.model.dto.LocationRespDto;
import kh.spring.chazazo.payment.model.dao.PaymentDao;
import kh.spring.chazazo.payment.model.dto.PaymentReqDto;


@Service
public class PaymentServiceImpl implements PaymentService {

	@Autowired
	private PaymentDao dao;
	
	
	@Override
	public List<PaymentReqDto> selectList(String username) {
		return dao.selectList(username);
	}

	public List<PaymentReqDto> pagingnation(Map<String, Object> map){
		return dao.pagingnation(map);
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
	public int selectNoneM(PaymentReqDto dto) {
		return dao.selectNoneM(dto);
	}

	

	@Override
	public List<PaymentReqDto> ReservationList(String username){
		return dao.ReservationList(username);
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
		int result = dao.deleteReserv(idx);
		int result1 = dao.reissueCoupon(idx);
		return result;
	}



	@Override

	public List<PaymentReqDto> allResList(Map<String, Object> map) {
		return dao.allResList(map);
	}




	@Override
	public PaymentReqDto selectNmemPayInfo(String merchantUid) {
		return dao.selectNmemPayInfo(merchantUid);

	}



	@Override
	public List<PaymentReqDto> optionResList(PaymentReqDto data) {
		return dao.optionResList(data);
	}

	@Override
	public int countMember(Map<String, Object> map) {
		return dao.countMember(map);
	}

	@Override
	public PaymentReqDto nmemInfo(int paymentIdx) {
		return dao.nmemInfo(paymentIdx);
	}
}
