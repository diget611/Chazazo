package kh.spring.chazazo.inquiry.model.service;

import java.util.List;
import java.util.Map;

import kh.spring.chazazo.inquiry.model.dto.InquiryInsertReqDto;
import kh.spring.chazazo.inquiry.model.dto.InquiryRespDto;

public interface InquiryService {
	
	public List<InquiryRespDto> selectList(Map<String, String> data);
	public int insert(InquiryInsertReqDto data);
	
}
