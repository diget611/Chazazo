package kh.spring.chazazo.reservation.model.service;

import java.util.List;

import kh.spring.chazazo.reservation.model.dto.ReservationReqDto;
import kh.spring.chazazo.reservation.model.dto.ReservationRespDto;
import kh.spring.chazazo.review.model.dto.ReviewDto;
import kh.spring.chazazo.vehicle.model.dto.VehicleReqDto;
import kh.spring.chazazo.vehicle.model.dto.VehicleRespDto;

public interface ReservationService {
	


	public List<ReservationRespDto> selectList();
	

	public ReservationRespDto selectOne(int idx);
	public List<ReservationRespDto> selectList(String username);

}
