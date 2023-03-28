package kh.spring.chazazo.location.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.spring.chazazo.location.model.dao.LocationDao;
import kh.spring.chazazo.location.model.dto.LocationReqDto;

@Service
public class LocationServiceImpl implements LocationService {
	
	@Autowired
	private LocationDao dao;

	@Override
	public List<LocationReqDto> getLocation(int idx) {
		return dao.getLocation(idx);
	}

}
