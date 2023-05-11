package kh.spring.chazazo.admin.vehicle.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.spring.chazazo.admin.vehicle.model.dto.AdminVehicleInsertDto;
import kh.spring.chazazo.admin.vehicle.model.dto.AdminVehicleOneRespDto;
import kh.spring.chazazo.admin.vehicle.model.dto.AdminVehicleRespDto;
import kh.spring.chazazo.admin.vehicle.model.dto.AdminVehicleUpdateReqDto;
import kh.spring.chazazo.common.Pagination;

@Repository
public class AdminVehicleDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	public int vehicleCount() {
		return sqlSession.selectOne("vehicle.count");
	}
	public List<AdminVehicleRespDto> selectVehicleList(Pagination pagination) {
		return sqlSession.selectList("vehicle.selectListAdmin", pagination);
	}	
	public AdminVehicleOneRespDto selectVehicleOne(String idx) {
		return sqlSession.selectOne("vehicle.selectOneAdmin", idx);
	}
	public int insertVehicle(AdminVehicleInsertDto data) {
		return sqlSession.insert("vehicle.insert", data);
	}
	public int updateVehicle(AdminVehicleUpdateReqDto data) {
		return sqlSession.update("vehicle.update", data);
	}
	public int deleteVehicle(int idx) {
		return sqlSession.update("vehicle.delete", idx);
	}
	
}
