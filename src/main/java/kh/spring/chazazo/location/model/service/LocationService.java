package kh.spring.chazazo.location.model.service;

import java.util.List;

import kh.spring.chazazo.location.model.dto.LocationReqDto;

public interface LocationService {

		public List<LocationReqDto> getLocation(int idx);
}
