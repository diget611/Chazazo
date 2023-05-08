package kh.spring.chazazo.inquiry.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.spring.chazazo.inquiry.model.dao.InquiryDao;
import kh.spring.chazazo.inquiry.model.dto.InquiryInsertReqDto;
import kh.spring.chazazo.inquiry.model.dto.InquiryRespDto;

@Service
public class InquiryServiceImpl implements InquiryService {

	@Autowired
	private InquiryDao dao;
	
	@Override
	public List<InquiryRespDto> selectList(Map<String, String> data) {
		return dao.selectList(data);
	}
	
	@Override
	public int insert(InquiryInsertReqDto data) {
		return dao.insert(data);
	}

}
