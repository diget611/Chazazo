package kh.spring.chazazo.admin.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.spring.chazazo.admin.model.dto.AdminMemberRespDto;
import kh.spring.chazazo.vehicle.model.dto.VehicleInfoDto;

@Repository
public class AdminDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	public List<AdminMemberRespDto> selectMemberList() {
		return sqlSession.selectList("member.selectMemberList");
	}
	
	public List<VehicleInfoDto> selectVehicleList() {
		return sqlSession.selectList("vehicle.selectList");
	}

}
