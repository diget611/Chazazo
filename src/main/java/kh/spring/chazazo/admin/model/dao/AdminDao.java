package kh.spring.chazazo.admin.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.spring.chazazo.admin.model.dto.AdminCouponManageRespDto;
import kh.spring.chazazo.admin.model.dto.AdminMemberRespDto;
import kh.spring.chazazo.admin.model.dto.AdminReportRespDto;
import kh.spring.chazazo.admin.model.dto.AdminRequestOneRespDto;
import kh.spring.chazazo.admin.model.dto.AdminRequestRespDto;
import kh.spring.chazazo.vehicle.model.dto.VehicleInfoDto;

@Repository
public class AdminDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	public List<AdminMemberRespDto> selectMemberList() {
		return sqlSession.selectList("member.selectMemberList");
	}
	
	public AdminMemberRespDto selectMemberOne(String username) {
		return sqlSession.selectOne("member.selectMemberOne", username);
	}
	
	public int deleteMember(String username) {
		return sqlSession.update("member.deleteMember", username);
	}
	
	public int deleteMemberInfo(String username) {
		return sqlSession.update("member.deleteMemberInfo", username);
	}
	
	public List<VehicleInfoDto> selectVehicleList() {
		return sqlSession.selectList("vehicle.selectList");
	}
	
	public List<AdminReportRespDto> selectReportList() {
		return sqlSession.selectList("report.selectList");
	}
	
	public AdminReportRespDto selectReportOne(String idx) {
		return sqlSession.selectOne("report.selectOne", idx);
	}
	
	public String selectReviewContent(String idx) {
		return sqlSession.selectOne("review.selectReviewContent", idx);
	}
	
	public List<AdminCouponManageRespDto> selectCouponList() {
		return sqlSession.selectList("couponmanage.selectList");
	}
	
	public AdminCouponManageRespDto selectCouponOne(String idx) {
		return sqlSession.selectOne("couponmanage.selectOne", idx);
	}
	
	public int requestCount() {
		return sqlSession.selectOne("request.count");
	}
	
	public List<AdminRequestRespDto> selectRequestList(Map<String, Integer> map) {
		return sqlSession.selectList("request.selectList", map);
	}
	
	public AdminRequestOneRespDto selectRequestOne(String idx) {
		return sqlSession.selectOne("request.selectOne", idx);
	}
	
	public int insertAnswer(Map<String, String> data) {
		return sqlSession.insert("answer.insert", data);
	}
	
	public int updateRequest(String idx) {
		return sqlSession.update("request.update", idx);
	}
	
	public int updateAnswer(Map<String, String> data) {
		return sqlSession.update("answer.update", data);
	}
	
	public int deleteRequest(String idx) {
		return sqlSession.delete("request.delete", idx);
	}
	
	public int deleteAnswer(String idx) {
		return sqlSession.delete("answer.delete", idx);
	}
 
}
