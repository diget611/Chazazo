package kh.spring.chazazo.payment.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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
	
	public List<PaymentReqDto> selectList(String username) {
		
		return session.selectList("payment.resList", username);
	}
		
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
