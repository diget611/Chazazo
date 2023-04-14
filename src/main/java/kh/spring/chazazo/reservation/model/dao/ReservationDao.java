package kh.spring.chazazo.reservation.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.spring.chazazo.reservation.model.dto.ReservationReqDto;
import kh.spring.chazazo.reservation.model.dto.ReservationRespDto;
import kh.spring.chazazo.review.model.dto.ReviewDto;

@Repository
public class ReservationDao {
	
	@Autowired
	private SqlSession session;
	
	
	
//	public List<ReservationRespDto> selectList(){
//		
//		return session.selectList("reservation.selectList");
//		
//	}
	
	public List<ReservationRespDto> ReservationOne(int idx){
		
		return session.selectList("reservation.ReservationOne",idx);
		
	}
	
	public List<ReservationRespDto> selectList(String username) {
		
		return session.selectList("reservation.resList", username);
	}
		
	public int deleteResv(int idx) {
		return session.delete("reservation.resDelete", idx);
	}



	
	


}
