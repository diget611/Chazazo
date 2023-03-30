package kh.spring.chazazo.vehicle.model.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.spring.chazazo.vehicle.model.dao.VehicleDao;
import kh.spring.chazazo.vehicle.model.dto.VehicleInfoDto;
import kh.spring.chazazo.vehicle.model.dto.VehicleReqDto;
import kh.spring.chazazo.vehicle.model.dto.VehicleRespDto;

@Service
public class VehicleServiceImpl implements VehicleService{

	@Autowired
	private VehicleDao dao;
	@Override
	public List<VehicleReqDto> selectList() {
		return dao.selectList();
	}


	@Override
	public List<VehicleRespDto> selectDetails(int idx) {
		return dao.selectDetails(idx);
	}

	@Override
	public VehicleRespDto selectOne(int idx) {
		VehicleRespDto result = dao.selectOne(idx);
		return result;
	}

	@Override
	public VehicleInfoDto getVehicleInfo(int idx) {
		return dao.getVehicleInfo(idx);
	}

	@Override
	public VehicleInfoDto getOptionInfo(int idx) {
		return dao.getOptionInfo(idx);
	}

	@Override
	public int selectOneCount( ) {
		return dao.selectOneCount();
	}



	@Override
	public List<VehicleRespDto> selectPageList(int currentPage, int limit) {
		Map<String, Integer> map = new HashMap<>();
		map.put("start", limit * (currentPage - 1) + 1);
		map.put("end", currentPage*limit);
		return dao.selectPageList(map);
	}

}
