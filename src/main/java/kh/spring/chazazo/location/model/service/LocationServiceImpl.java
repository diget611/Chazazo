package kh.spring.chazazo.location.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.spring.chazazo.location.model.dao.LocationDao;
import kh.spring.chazazo.location.model.dto.LocationReqDto;
import kh.spring.chazazo.location.model.dto.LocationRespDto;

@Service
public class LocationServiceImpl implements LocationService {
	
	@Autowired
	private LocationDao dao;

	@Override
	public List<LocationReqDto> getLocation(int idx) {
		return dao.getLocation(idx);
	}

	@Override
	public List<LocationRespDto> selectLocation(int idx) {
		return dao.selectLocation(idx);
	}
	@Override
	public List<LocationRespDto> selectLocation(String username) {
		return dao.selectLocation(username);
	}
	@Override
	public List<LocationRespDto> selectLikeLocation(String username) {
		
		List<LocationRespDto> likeList = dao.selectLikeLocation(username);
		if(likeList == null) {
			return null;
		}
		return dao.selectLikeLocation(username);
	}

	@Override
	public int insertFavLocation(Map<String, Object> map) {
		return dao.insertFavLocation(map);
	}

	@Override
	public int getLike(Map<String, Object> map) {
		return dao.getLike(map);
	}

	@Override
	public int deleteFav(Map<String, Object> map) {
		return dao.deleteFav(map);
	}

	@Override
	public List<LocationRespDto> selectLocation() {
		return dao.selectLocation();
	}


}
