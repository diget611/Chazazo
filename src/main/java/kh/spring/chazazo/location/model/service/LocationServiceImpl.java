package kh.spring.chazazo.location.model.service;

import java.util.List;

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
	public List<LocationRespDto> selectLikeLocation(String username) {
		
		List<LocationRespDto> likeList = dao.selectLikeLocation(username);
		if(likeList == null) {
			return null;
		}
		return dao.selectLikeLocation(username);
	}

	@Override
	public int insertFavLocation(LocationReqDto dto) {
		return dao.insertFavLocation(dto);
	}

	@Override
	public boolean getLike(Integer memberIdx, Integer idx) {
		LocationRespDto dto = dao.getLike(memberIdx, idx);
		return dto != null;
	}

	@Override
	public int deleteFav(Integer memberIdx, Integer idx) {
		
		return dao.deleteFav(memberIdx, idx);
	}

	@Override
	public List<LocationRespDto> selectLocation() {
		return dao.selectLocation();
	}


}
