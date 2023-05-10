package kh.spring.chazazo.admin.location.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.spring.chazazo.admin.location.model.dto.AdminLocationInsertReqDto;
import kh.spring.chazazo.admin.location.model.dto.AdminLocationListRespDto;
import kh.spring.chazazo.admin.location.model.dto.AdminLocationOneRespDto;
import kh.spring.chazazo.admin.location.model.dto.AdminLocationRespDto;
import kh.spring.chazazo.admin.location.model.dto.AdminLocationUpdateReqDto;
import kh.spring.chazazo.common.Pagination;

@Repository
public class AdminLocationDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	public int locationCount() {
		return sqlSession.selectOne("location.count");
	}
	public List<AdminLocationRespDto> selectLocationList(Pagination pagination) {
		return sqlSession.selectList("location.selectList", pagination);
	}
	public AdminLocationOneRespDto selectLocationOne(String idx) {
		return sqlSession.selectOne("location.selectOne", idx);
	}
	public int insertLocation(AdminLocationInsertReqDto data) {
		return sqlSession.insert("location.insert", data);
	}
	public int updateLocation(AdminLocationUpdateReqDto data) {
		return sqlSession.update("location.update", data);
	}
	public int deleteLocation(int idx) {
		return sqlSession.update("location.delete", idx);
	}
	public List<AdminLocationListRespDto> locationList() {
		return sqlSession.selectList("location.selectListForAdmin");
	}

}
