package kh.spring.chazazo.admin.statistics.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.spring.chazazo.admin.reservation.model.dto.AdminReservByModelRespDto;
import kh.spring.chazazo.admin.statistics.model.dao.AdminStatisticsDao;
import kh.spring.chazazo.admin.statistics.model.dto.AdminStatisticsCountRespDto;
import kh.spring.chazazo.admin.statistics.model.dto.AdminStatisticsRecentMonthDto;
import kh.spring.chazazo.admin.statistics.model.dto.AdminStatisticsReqDto;
import kh.spring.chazazo.admin.statistics.model.dto.AdminStatisticsSumRespDto;

@Service
public class AdminStatisticsServiceImpl implements AdminStatisticsService {
	
	@Autowired
	private AdminStatisticsDao dao;
	
	@Override
	public List<AdminReservByModelRespDto> selectByModel() {
		return dao.selectByModel();
	}
	@Override
	public List<AdminStatisticsRecentMonthDto> recentMonth() {
		return dao.recentMonth();
	}
	
	@Override
	public List<String> selectLocNameList() {
		return dao.selectLocNameList();
	}
	@Override
	public List<String> monthList() {
		return dao.monthList();
	}
	
	@Override
	public List<AdminStatisticsCountRespDto> selectCountForChart(AdminStatisticsReqDto data) {
		return dao.selectCountForChart(data);
	}
	@Override
	public List<AdminStatisticsSumRespDto> selectSumForChart(AdminStatisticsReqDto data) {
		return dao.selectSumForChart(data);
	}
}
