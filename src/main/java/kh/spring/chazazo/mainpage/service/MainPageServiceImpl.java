package kh.spring.chazazo.mainpage.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.spring.chazazo.inquiry.model.dto.InquiryMainRespDto;
import kh.spring.chazazo.mainpage.dao.MainPageDao;
import kh.spring.chazazo.review.model.dto.ReviewMainRespDto;

@Service
public class MainPageServiceImpl implements MainPageService {
	
	@Autowired
	private MainPageDao dao;

	@Override
	public int reviewCount() {
		return dao.reviewCount();
	}

	@Override
	public int reservCount() {
		return dao.reservCount();
	}

	@Override
	public int vehicleCount() {
		return dao.vehicleCount();
	}

	@Override
	public int locationCount() {
		return dao.locationCount();
	}

	@Override
	public List<ReviewMainRespDto> reviewList() {
		return dao.reviewList();
	}
	
	@Override
	public List<InquiryMainRespDto> inquiryList() {
		return dao.inquiryList();
	}

}
