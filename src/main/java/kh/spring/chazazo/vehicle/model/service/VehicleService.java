package kh.spring.chazazo.vehicle.model.service;

import java.util.List;

import kh.spring.chazazo.vehicle.model.dto.VehicleInfoDto;
import kh.spring.chazazo.vehicle.model.dto.VehicleReqDto;
import kh.spring.chazazo.vehicle.model.dto.VehicleRespDto;

public interface VehicleService {

	public List<VehicleReqDto> selectList();


	public List<VehicleRespDto> selectDetails(int idx);


	public VehicleRespDto selectOne(int idx);
	
	public VehicleInfoDto getVehicleInfo(int idx);


	public VehicleInfoDto getOptionInfo(int idx); 

}
