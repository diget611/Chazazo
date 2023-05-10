package kh.spring.chazazo.mainpage.service;

import java.util.List;

import kh.spring.chazazo.inquiry.model.dto.InquiryMainRespDto;
import kh.spring.chazazo.review.model.dto.ReviewMainRespDto;

public interface MainPageService {

	public int reviewCount();	
	public int reservCount();
	public int vehicleCount();
	public int locationCount();
	public List<ReviewMainRespDto> reviewList();
	public List<InquiryMainRespDto> inquiryList();
	
}
