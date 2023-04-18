package kh.spring.chazazo.admin.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.spring.chazazo.admin.model.dao.AdminDao;
import kh.spring.chazazo.admin.model.dto.AdminCouponManageRespDto;
import kh.spring.chazazo.admin.model.dto.AdminMemberRespDto;
import kh.spring.chazazo.admin.model.dto.AdminNoticeOneRespDto;
import kh.spring.chazazo.admin.model.dto.AdminNoticeRespDto;
import kh.spring.chazazo.admin.model.dto.AdminReportRespDto;
import kh.spring.chazazo.admin.model.dto.AdminRequestOneRespDto;
import kh.spring.chazazo.admin.model.dto.AdminRequestRespDto;
import kh.spring.chazazo.common.Pagination;
import kh.spring.chazazo.vehicle.model.dto.VehicleInfoDto;

@Service
public class AdminServiceImpl implements AdminService {

	@Autowired
	private AdminDao dao;
	
	@Override
	public List<AdminMemberRespDto> selectMemberList() {
		return dao.selectMemberList();
	}
	
	@Override
	public AdminMemberRespDto selectMemberOne(String username) {
		return dao.selectMemberOne(username);
	}
	
	@Override
	public int deleteMember(String username) {
		int result = 0;
		if(dao.deleteMember(username) == 1) {
			result = dao.deleteMemberInfo(username);
		}
		return result;
	}

	@Override
	public List<VehicleInfoDto> selectVehicleList() {
		return dao.selectVehicleList();
	}

	@Override
	public List<AdminReportRespDto> selectReportList() {
		return dao.selectReportList();
	}

	@Override
	public AdminReportRespDto selectReportOne(String idx) {
		return dao.selectReportOne(idx);
	}

	@Override
	public String selectReviewContent(String idx) {
		return dao.selectReviewContent(idx);
	}

	@Override
	public List<AdminCouponManageRespDto> selectCouponList() {
		return dao.selectCouponList();
	}

	@Override
	public AdminCouponManageRespDto selectCouponOne(String idx) {
		return dao.selectCouponOne(idx);
	}
	
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
	public int insertAnswer(Map<String, String> data, String idx) {
		int result = dao.insertAnswer(data);
		if(result == 1) {
			dao.updateRequest(idx);
		}
		return result;
	}

	@Override
	public int updateAnswer(Map<String, String> data, String idx) {
		int result = dao.updateAnswer(data);
		if(result == 1) {
			dao.updateRequest(idx);
		}
		return result;
	}

	@Override
	public int deleteRequest(String idx) {
		int result = dao.deleteAnswer(idx);
		System.out.println(result);
		if(result == 1) {
			dao.deleteRequest(idx);
		}
		return result;
	}

	@Override
	public List<AdminNoticeRespDto> selectNoticeList() {
		return dao.selectNoticeList();
	}

	@Override
	public AdminNoticeOneRespDto selectNoticeOne(String idx) {
		return dao.selectNoticeOne(idx);
	}

	@Override
	public int noticeCount() {
		return dao.noticeCount();
	}

}
