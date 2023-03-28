package kh.spring.chazazo.location.model.service;

import java.util.List;

import kh.spring.chazazo.location.model.dto.LocationReqDto;
import kh.spring.chazazo.location.model.dto.LocationRespDto;

public interface LocationService {

		public List<LocationReqDto> getLocation(int idx);

		public List<LocationRespDto> selectLocation(int idx);
}
