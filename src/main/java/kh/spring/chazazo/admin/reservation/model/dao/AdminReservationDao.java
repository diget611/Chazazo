package kh.spring.chazazo.admin.reservation.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.spring.chazazo.admin.reservation.model.dto.AdminReservOneRespDto;
import kh.spring.chazazo.admin.reservation.model.dto.AdminReservRespDto;
import kh.spring.chazazo.common.Pagination;

@Repository
public class AdminReservationDao {

	@Autowired
	private SqlSession sqlSession;
	
	public int reservCount() {
		return sqlSession.selectOne("payment.count");
	}
	public List<AdminReservRespDto> selectReservList(Pagination pagination) {
		return sqlSession.selectList("payment.selectList", pagination);
	}
	public List<AdminReservRespDto> selectReservList(Map<String, Integer> data) {
		return sqlSession.selectList("payment.selectListForMain", data);
	}
	public AdminReservOneRespDto selectReservOne(int idx) {
		return sqlSession.selectOne("payment.selectOneForAdmin", idx);
	}
	public int cancelReservation(int idx) {
		return sqlSession.update("payment.cancel", idx);
	}
	
}
