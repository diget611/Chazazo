package kh.spring.chazazo.request.model.service;

import java.util.List;
import java.util.Map;

import kh.spring.chazazo.request.model.dto.RequestRespDto;

public interface RequestService {
	
	public List<RequestRespDto> selectListByMember(String username);
	public int insert(Map<String, String> data);
}
