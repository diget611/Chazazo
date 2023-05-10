package kh.spring.chazazo.admin.request.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kh.spring.chazazo.admin.request.model.dao.AdminRequestDao;
import kh.spring.chazazo.admin.request.model.dto.AdminRequestOneRespDto;
import kh.spring.chazazo.admin.request.model.dto.AdminRequestRespDto;
import kh.spring.chazazo.common.Pagination;

@Service
public class AdminRequestServiceImpl implements AdminRequestService{
	
	@Autowired
	private AdminRequestDao dao;
	
	@Override
	public int requestCount() {
		return dao.requestCount();
	}
	@Override
	public List<AdminRequestRespDto> selectRequestList(Pagination pagination) {
		return dao.selectRequestList(pagination);
	}
	@Override
	public List<AdminRequestRespDto> selectRequestList(Map<String, Integer> data) {
		return dao.selectRequestList(data);
	}
	@Override
	public AdminRequestOneRespDto selectRequestOne(String idx) {
		return dao.selectRequestOne(idx);
	}
	@Override
	@Transactional
	public int insertAnswer(Map<String, String> data, String idx) {
		int result = dao.insertAnswer(data);
		if(result == 1) {
			dao.updateRequest(idx);
		}
		return result;
	}
	@Override
	@Transactional
	public int updateAnswer(Map<String, String> data, String idx) {
		int result = dao.updateAnswer(data);
		if(result == 1) {
			dao.updateRequest(idx);
		}
		return result;
	}
	@Override
	@Transactional
	public int deleteRequest(String idx) {
		int result = dao.deleteAnswer(idx);
		System.out.println(result);
		if(result == 1) {
			dao.deleteRequest(idx);
		}
		return result;
	}

}
