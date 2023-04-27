package kh.spring.chazazo.payment.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.spring.chazazo.location.model.dto.LocationRespDto;
import kh.spring.chazazo.payment.model.dto.PaymentInfoDto;
import kh.spring.chazazo.payment.model.dto.PaymentReqDto;

@Repository
public class PaymentDao {

	@Autowired
	private SqlSession session;
	
	

	
	public List<PaymentReqDto> ReservationList(int idx){
		
		return session.selectList("payment.ReservationOne",idx);
		
	}
	public PaymentReqDto ReservationOne(String idx) {
		return session.selectOne("payment.ReservationOne",idx);
	}
	
	
	public PaymentReqDto noneReser(int paymentIdx){
		
		return session.selectOne("payment.noneMemberRes",paymentIdx);
		
	}
	
	public PaymentReqDto selectNoneM(PaymentReqDto dto){
		
		return session.selectOne("payment.selectNoneM",dto);
		
	}
	
	
	
	//렌트업체 정보
	public LocationRespDto resvLocation(String idx) {
		return session.selectOne("payment.reservLocation", idx);
	}
	
	public List<PaymentReqDto> selectList(String username) {
		
		return session.selectList("payment.resList", username);
	}
	
//		
//	public PaymentInfoDto selectList(int idx) {
//		return session.selectOne("payment.resList", idx);
//	}
	
	
	public int deleteResv(int idx) {
		return session.delete("payment.resDelete", idx);
	}

	public int insertPayInfo(PaymentReqDto data) {
		return session.insert("payment.insertPayInfo", data);
	}
	public int insertNmemInfo(PaymentReqDto data) {
		return session.insert("payment.insertNmemInfo", data);
	}
}
