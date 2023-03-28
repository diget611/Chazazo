package kh.spring.chazazo.location.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.spring.chazazo.location.model.dto.LocationReqDto;

@Repository
public class LocationDao {
	@Autowired
	private SqlSession sqlSession;

	public List<LocationReqDto> getLocation(int idx) {
		return sqlSession.selectList("vehicle.getLocation", idx);
	}

}
