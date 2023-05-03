package kh.spring.chazazo.location.model.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	
	// 좋아요상태 포함
	public List<LocationRespDto> selectLocation(String username) {
		return sqlSession.selectList("location.selectNameListWLiked", username);
	}
	
	public List<LocationRespDto> selectLocation() {
		return sqlSession.selectList("location.selectNameList");
	}
	
	public List<LocationRespDto> selectLikeLocation(String username){
		return sqlSession.selectList("location.likeLocation", username);
	}
	
	
	
	public int insertFavLocation(Map<String, Object> map) {
		return sqlSession.insert("location.insertFavorite", map);
	}
	
	public int deleteFav(Map<String, Object> map)  {
		return sqlSession.delete("location.deleteFav", map);
	}
	
	public int getLike(Map<String, Object> map) {
		return sqlSession.selectOne("location.getLikeLoction",map);
		
	}
}
