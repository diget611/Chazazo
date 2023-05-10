package kh.spring.chazazo.admin.mainpage.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.spring.chazazo.admin.mainpage.model.dto.AdminCarTypeListRespDto;
import kh.spring.chazazo.admin.mainpage.model.dto.AdminFuelTypeListRespDto;

@Repository
public class AdminDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	// 메인페이지
	public int dayReservCount() {
		return sqlSession.selectOne("payment.dayReservCount");
	}
	public int dayReservSum() {
		return sqlSession.selectOne("payment.dayReservSum");
	}
	public int dayRegiCount() {
		return sqlSession.selectOne("member.dayRegiCount");
	}
	public int dayReqCount() {
		return sqlSession.selectOne("request.dayReqCount");
	}
	public List<AdminCarTypeListRespDto> cartypeList() {
		return sqlSession.selectList("cartype.selectList");
	}
	public List<AdminFuelTypeListRespDto> fueltypeList() {
		return sqlSession.selectList("fueltype.selectList");
	}
}
