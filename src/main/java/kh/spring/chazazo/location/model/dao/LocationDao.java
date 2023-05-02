package kh.spring.chazazo.location.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.spring.chazazo.location.model.dto.LocationReqDto;
import kh.spring.chazazo.location.model.dto.LocationRespDto;

@Repository
public class LocationDao {
	@Autowired
	private SqlSession sqlSession;

	public List<LocationReqDto> getLocation(int idx) {
		return sqlSession.selectList("vehicle.getLocation", idx);
	}

	public List<LocationRespDto> selectLocation(int idx) {
		return sqlSession.selectList("vehicle.selectLocation",idx);
	}

	public List<LocationRespDto> selectLikeLocation(String username){
		return sqlSession.selectList("location.likeLocation", username);
	}
	
	public int insertFavLocation(LocationReqDto dto) {
		return sqlSession.insert("location.insertFavorite", dto);
	}
	
	public int deleteFav(int idx) {
		return sqlSession.delete("location.deleteFav",idx);
	}
}
