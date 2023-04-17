package kh.spring.chazazo.request.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.spring.chazazo.request.model.dao.RequestDao;
import kh.spring.chazazo.request.model.dto.RequestReqDto;
import kh.spring.chazazo.request.model.dto.RequestRespDto;

@Service
public class RequestServiceImpl implements RequestService {
	
	@Autowired
	private RequestDao dao;

	@Override
	public List<RequestRespDto> selectListByMember(String username) {
		return dao.selectListByMember(username);
	}

	@Override
	public int insert(RequestReqDto data) {
		return dao.insert(data);
	} 

}
