package kh.spring.chazazo.payment.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.spring.chazazo.payment.model.dto.PaymentInfoDto;
import kh.spring.chazazo.payment.model.dto.PaymentReqDto;

@Repository
public class PaymentDao {

	@Autowired
	private SqlSession session;
	
	
	
//	public List<ReservationRespDto> selectList(){
//		
//		return session.selectList("reservation.selectList");
//		
//	}
	
	public List<PaymentReqDto> ReservationOne(int idx){
		
		return session.selectList("payment.ReservationOne",idx);
		
	}
	
	public PaymentReqDto noneReser(int idx){
		
		return session.selectOne("payment.noneMemberRes",idx);
		
	}
	
	public PaymentReqDto selectNoneM(PaymentReqDto dto){
		
		return session.selectOne("payment.selectNoneM",dto);
		
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
