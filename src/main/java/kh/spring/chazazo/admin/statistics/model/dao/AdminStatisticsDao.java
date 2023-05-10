package kh.spring.chazazo.admin.statistics.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.spring.chazazo.admin.reservation.model.dto.AdminReservByModelRespDto;
import kh.spring.chazazo.admin.statistics.model.dto.AdminStatisticsCountRespDto;
import kh.spring.chazazo.admin.statistics.model.dto.AdminStatisticsRecentMonthDto;
import kh.spring.chazazo.admin.statistics.model.dto.AdminStatisticsReqDto;
import kh.spring.chazazo.admin.statistics.model.dto.AdminStatisticsSumRespDto;

@Repository
public class AdminStatisticsDao {

	@Autowired
	private SqlSession sqlSession;
	
	public List<AdminReservByModelRespDto> selectByModel() {
		return sqlSession.selectList("payment.reservByModel");
	}
	public List<AdminStatisticsRecentMonthDto> recentMonth() {
		return sqlSession.selectList("payment.recentMonth");
	}
	public List<String> selectLocNameList() {
		return sqlSession.selectList("location.selectNameList");
	}
	public List<String> monthList() {
		return sqlSession.selectList("payment.monthList");
	}
	public List<AdminStatisticsCountRespDto> selectCountForChart(AdminStatisticsReqDto data) {
		return sqlSession.selectList("payment.selectCountForChart", data);
	}
	public List<AdminStatisticsSumRespDto> selectSumForChart(AdminStatisticsReqDto data) {
		return sqlSession.selectList("payment.selectSumForChart", data);
	}
	
}
