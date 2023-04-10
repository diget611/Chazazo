package kh.spring.chazazo.admin.model.dto;

import java.sql.Date;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data
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
