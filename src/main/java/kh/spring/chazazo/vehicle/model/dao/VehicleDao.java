package kh.spring.chazazo.vehicle.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.spring.chazazo.vehicle.model.dto.VehicleInfoDto;
import kh.spring.chazazo.vehicle.model.dto.VehicleReqDto;
import kh.spring.chazazo.vehicle.model.dto.VehicleRespDto;

@Repository
public class VehicleDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	public List<VehicleReqDto> selectList() {
		return sqlSession.selectList("vehicle.selectList");
	}
	
	public List<VehicleReqDto> selectList(List<String> carTypeList) {
		return sqlSession.selectList("vehicle.selectList", carTypeList);
	}
	
	public List<VehicleReqDto> selectList(Map<String, Object> search) {
		return sqlSession.selectList("vehicle.selectList", search);
	}

	public List<VehicleRespDto> selectDetails(int idx) {
		return sqlSession.selectList("vehicle.selectDetails",idx);
	}

	public VehicleRespDto selectOne(int idx) {
		return sqlSession.selectOne("vehicle.selectOne", idx);
	}
	
	public VehicleInfoDto getVehicleInfo(int idx) {
		return sqlSession.selectOne("vehicle.getVehicleInfo", idx);
	}

	public VehicleInfoDto getOptionInfo(int idx) {
		return sqlSession.selectOne("vehicle.getOptionInfo",idx);
	}

	public int selectOneCount() {
		return sqlSession.selectOne("vehicle.count");
	}

}
