package kh.spring.chazazo.vehicle.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.spring.chazazo.vehicle.model.dto.VehicleReqDto;

@Repository
public class VehicleDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	public List<VehicleReqDto> selectList() {
		return sqlSession.selectList("vehicleMapper.selectListid");
	}

}
