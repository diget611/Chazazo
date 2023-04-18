package kh.spring.chazazo.admin.model.dto;

import java.sql.Date;

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
public class AdminReportRespDto {
	
	private int idx;
	private int reviewIdx;
	private int memberIdx;
	private String reason;
	private int status;
	private Date startDate;
	private Date endDate;
	private String username;

}
