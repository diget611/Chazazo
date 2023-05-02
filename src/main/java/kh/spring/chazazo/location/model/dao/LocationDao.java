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

	
	
	public List<LocationRespDto> selectLocation() {
		return sqlSession.selectList("location.selectNameList");
	}

	
	public List<LocationRespDto> selectLikeLocation(String username){
		return sqlSession.selectList("location.likeLocation", username);
	}
	
	
	
	public int insertFavLocation(LocationReqDto dto) {
		return sqlSession.insert("location.insertFavorite", dto);
	}
	
	public int deleteFav(Integer memberIdx, Integer idx) {
		Map<String, Object> result = new HashMap<String, Object>();
	
		result.put("memberIdx", memberIdx);
		result.put("locationIdx", idx);
		return sqlSession.delete("location.deleteFav", result);
	}
	
	public LocationRespDto getLike(Integer memberIdx, Integer idx){
		Map<String, Object> result = new HashMap<String, Object>();
		
		result.put("memberIdx", memberIdx);
		result.put("locationIdx", idx);
		return sqlSession.selectOne("location.getLikeLoction",result);
		
	}
}
