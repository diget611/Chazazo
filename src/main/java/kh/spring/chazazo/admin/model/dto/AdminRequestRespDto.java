package kh.spring.chazazo.admin.model.dto;

import java.sql.Date;

import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Component
@Getter
@AllArgsConstructor
@NoArgsConstructor
public class AdminRequestRespDto {
	
	private int idx;
	private String title;
	private int status;
	private Date reqDate;
	private Date ansDate;
	private String username;
	
}
