package kh.spring.chazazo.admin.request.model.service;

import java.util.List;
import java.util.Map;

import kh.spring.chazazo.admin.request.model.dto.AdminRequestOneRespDto;
import kh.spring.chazazo.admin.request.model.dto.AdminRequestRespDto;
import kh.spring.chazazo.common.Pagination;

public interface AdminRequestService {
	
	public int requestCount();
	public List<AdminRequestRespDto> selectRequestList(Pagination pagination);
	public List<AdminRequestRespDto> selectRequestList(Map<String, Integer> data);
	public AdminRequestOneRespDto selectRequestOne(String idx);
	public int insertAnswer(Map<String, String> data, String idx);
	public int updateAnswer(Map<String, String> data, String idx);
	public int deleteRequest(String idx);
	
}
