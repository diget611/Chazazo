package kh.spring.chazazo.admin.statistics.model.dto;

import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Component
@Getter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class AdminStatisticsCountRespDto {

	private int paidTime;
	private int cnt;
	
}
