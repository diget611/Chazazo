package kh.spring.chazazo.admin.model.dto;

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
public class AdminStatisticsRecentMonthDto {
	
	private int loc1;
	private int loc2;
	private int loc3;
	private int loc4;
	private int loc5;
	
}
