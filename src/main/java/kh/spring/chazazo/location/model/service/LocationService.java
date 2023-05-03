package kh.spring.chazazo.location.model.service;

import java.util.List;
import java.util.Map;

import kh.spring.chazazo.location.model.dto.LocationReqDto;
import kh.spring.chazazo.location.model.dto.LocationRespDto;

public interface LocationService {

		public List<LocationReqDto> getLocation(int idx);

		public List<LocationRespDto> selectLocation(int idx);
		// 좋아요상태 포함
		public List<LocationRespDto> selectLocation(String username);
		//나의 관심 지점
		public List<LocationRespDto> selectLikeLocation(String username);
		public int insertFavLocation(Map<String, Object> map);
		public int getLike(Map<String, Object> map);
		public int deleteFav(Map<String, Object> map);
		public List<LocationRespDto> selectLocation();

		public LocationRespDto getInfo(int idx);

}
