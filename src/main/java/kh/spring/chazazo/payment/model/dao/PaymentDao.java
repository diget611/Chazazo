package kh.spring.chazazo.payment.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.spring.chazazo.common.Pagination;
import kh.spring.chazazo.location.model.dto.LocationRespDto;
import kh.spring.chazazo.payment.model.dto.PaymentInfoDto;
import kh.spring.chazazo.payment.model.dto.PaymentReqDto;

@Repository
public class PaymentDao {

	@Autowired
	private SqlSession session;
	
	

	//예약내역 리스트  
	public List<PaymentReqDto> ReservationList(String username){
		return session.selectList("payment.resList",username);
	}
	public List<PaymentReqDto> optionResList(PaymentReqDto data){
		return session.selectList("payment.optionResList",data);
	}
	public List<PaymentReqDto> pagingnation(Map<String, Object> map){
		return session.selectList("payment.paging",map);
	}
	public int countMember(Map<String, Object> map) {
		return session.selectOne("payment.countMember",map);
	}
	//예약상세  
	public PaymentReqDto ReservationOne(int idx) {
		return session.selectOne("payment.ReservationOne",idx);
	}
	
	//비회원 예약내역 
	public PaymentReqDto noneReser(int paymentIdx){
		return session.selectOne("payment.noneMemberRes",paymentIdx);
	}
	
	//비회원 예약조회 
	public int selectNoneM(PaymentReqDto dto){
		return session.selectOne("payment.selectNoneM",dto);
	}
	

	//예약내역 삭제
	public int deleteReserv(int idx) {
		return session.update("payment.deleteReserv",idx);
	}
	
	//예약 취소하면 쿠폰 재발급
	public int reissueCoupon(int idx) {
		return session.update("payment.reissueCoupon",idx);
	}
	
	//렌트업체 정보
	public LocationRespDto resvLocation(int idx) {
		return session.selectOne("payment.reservLocation", idx);
	}
	
	//마이페이지 예약완료 내역
	public List<PaymentReqDto> selectList(String username) {
		return session.selectList("payment.resList", username);
	}
	
	//전체 예약내역
	public List<PaymentReqDto> allResList(Map<String, Object> map) {
	    return session.selectList("payment.allResList", map);
	}
	public PaymentReqDto nmemInfo(int paymentIdx) {
		return session.selectOne("payment.nmemInfo", paymentIdx);
	}
	
	public int insertPayInfo(PaymentReqDto data) {
		return session.insert("payment.insertPayInfo", data);
	}
	public int insertNmemInfo(PaymentReqDto data) {
		return session.insert("payment.insertNmemInfo", data);
	}

	public int updateCoupon(PaymentReqDto data) {
		return session.update("payment.updateCoupon", data);
	}

	public PaymentReqDto selectNmemPayInfo(String merchantUid) {
		return session.selectOne("payment.selectNmemPayInfo",merchantUid);
	}
}
