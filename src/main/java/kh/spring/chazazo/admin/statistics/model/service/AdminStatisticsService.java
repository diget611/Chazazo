package kh.spring.chazazo.admin.statistics.model.service;

import java.util.List;

import kh.spring.chazazo.admin.reservation.model.dto.AdminReservByModelRespDto;
import kh.spring.chazazo.admin.statistics.model.dto.AdminStatisticsCountRespDto;
import kh.spring.chazazo.admin.statistics.model.dto.AdminStatisticsRecentMonthDto;
import kh.spring.chazazo.admin.statistics.model.dto.AdminStatisticsReqDto;
import kh.spring.chazazo.admin.statistics.model.dto.AdminStatisticsSumRespDto;

public interface AdminStatisticsService {
	
	public List<AdminReservByModelRespDto> selectByModel();
	public List<AdminStatisticsRecentMonthDto> recentMonth();
	public List<String> selectLocNameList();
	public List<String> monthList();
	public List<AdminStatisticsCountRespDto> selectCountForChart(AdminStatisticsReqDto data);
	public List<AdminStatisticsSumRespDto> selectSumForChart(AdminStatisticsReqDto data);
	
}
