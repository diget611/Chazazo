package kh.spring.chazazo.admin.report.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.spring.chazazo.admin.report.model.dto.AdminReportRespDto;
import kh.spring.chazazo.admin.report.model.dto.AdminReportUpdateReqDto;
import kh.spring.chazazo.common.Pagination;

@Repository
public class AdminReportDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	public int reportCount() {
		return sqlSession.selectOne("report.count");
	}
	public List<AdminReportRespDto> selectReportList(Pagination pagination) {
		return sqlSession.selectList("report.selectList", pagination);
	}
	public AdminReportRespDto selectReportOne(String idx) {
		return sqlSession.selectOne("report.selectOne", idx);
	}
	public int returnReport(AdminReportUpdateReqDto data) {
		return sqlSession.update("report.return", data);
	}
	public int confirmReport(AdminReportUpdateReqDto data) {
		return sqlSession.update("report.confirm", data);
	}
	public int returnReview(AdminReportUpdateReqDto data) {
		return sqlSession.update("review.return", data);
	}
	public int confirmReview(AdminReportUpdateReqDto data) {
		return sqlSession.update("review.confirm", data);
	}
	
}
