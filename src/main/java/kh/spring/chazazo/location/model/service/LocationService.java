package kh.spring.chazazo.location.model.service;

import java.util.List;

import kh.spring.chazazo.location.model.dto.LocationReqDto;
import kh.spring.chazazo.location.model.dto.LocationRespDto;

public interface LocationService {

		public List<LocationReqDto> getLocation(int idx);

		public List<LocationRespDto> selectLocation(int idx);
		
		//나의 관심 지점
		public List<LocationRespDto> selectLikeLocation(String username);
		public int insertFavLocation(LocationReqDto dto);
		public boolean getLike(Integer memberIdx, Integer idx);
		public int deleteFav(Integer memberIdx, Integer idx);
		public List<LocationRespDto> selectLocation();

}
