package kh.spring.chazazo.reservation.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.spring.chazazo.reservation.model.dto.ReservationReqDto;
import kh.spring.chazazo.review.model.dto.ReviewDto;

@Repository
public class ReservationDao {
	@Autowired
	private SqlSession session;
	
	public ReservationReqDto reservaionListUser(int idx) {
		//TODO
		return null;
	}
	
	
	


}
