package kh.spring.chazazo.vehicle.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.spring.chazazo.vehicle.model.dao.VehicleDao;
import kh.spring.chazazo.vehicle.model.dto.VehicleReqDto;

@Service
public class VehicleServiceImpl implements VehicleService{

	@Autowired
	private VehicleDao dao;
	@Override
	public List<VehicleReqDto> selectList() {
		return dao.selectList();
	}

}
