package kh.spring.chazazo.admin.report.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kh.spring.chazazo.admin.report.model.dao.AdminReportDao;
import kh.spring.chazazo.admin.report.model.dto.AdminReportRespDto;
import kh.spring.chazazo.admin.report.model.dto.AdminReportUpdateReqDto;
import kh.spring.chazazo.common.Pagination;

@Service
public class AdminReportServiceImpl implements AdminReportService {
	
	@Autowired
	private AdminReportDao dao;
	
	@Override
	public int reportCount() {
		return dao.reportCount();
	}
	@Override
	public List<AdminReportRespDto> selectReportList(Pagination pagination) {
		return dao.selectReportList(pagination);
	}
	@Override
	public AdminReportRespDto selectReportOne(String idx) {
		return dao.selectReportOne(idx);
	}
	@Override
	@Transactional
	public int returnReport(AdminReportUpdateReqDto data) {
		int result = dao.returnReport(data);
		if(result == 1) {
			result = dao.returnReview(data);
		}
		return result;
	}
	@Override
	@Transactional
	public int confirmReport(AdminReportUpdateReqDto data) {
		int result = dao.confirmReport(data);
		if(result == 1) {
			result = dao.confirmReview(data);
		}
		return result;
	}
}
