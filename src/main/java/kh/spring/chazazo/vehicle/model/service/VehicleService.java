package kh.spring.chazazo.vehicle.model.service;

import java.util.List;
import java.util.Map;

import kh.spring.chazazo.vehicle.model.dto.VehicleInfoDto;
import kh.spring.chazazo.vehicle.model.dto.VehicleReqDto;
import kh.spring.chazazo.vehicle.model.dto.VehicleRespDto;


public interface VehicleService {

	public List<VehicleReqDto> selectList();
	public List<VehicleReqDto> selectList(List<String> carTypeList);

	public List<VehicleReqDto> selectList(Map<String, Object> search);


	public List<VehicleRespDto> selectDetails(int idx);


	public VehicleRespDto selectOne(int idx);
	
	public VehicleInfoDto getVehicleInfo(int idx);


	public VehicleInfoDto getOptionInfo(int idx);


	public int selectOneCount(); 
	
}
