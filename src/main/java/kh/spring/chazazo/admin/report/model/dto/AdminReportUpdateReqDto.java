package kh.spring.chazazo.admin.report.model.dto;

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
public class AdminReportUpdateReqDto {
	
	private int idx;
	private int reviewIdx;
	
}
