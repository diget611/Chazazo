package kh.spring.chazazo.admin.report.model.service;

import java.util.List;

import kh.spring.chazazo.admin.report.model.dto.AdminReportRespDto;
import kh.spring.chazazo.admin.report.model.dto.AdminReportUpdateReqDto;
import kh.spring.chazazo.common.Pagination;

public interface AdminReportService {
	
	public int reportCount();
	public List<AdminReportRespDto> selectReportList(Pagination pagination);
	public AdminReportRespDto selectReportOne(String idx);
	public int returnReport(AdminReportUpdateReqDto data);
	public int confirmReport(AdminReportUpdateReqDto data);
	
}
