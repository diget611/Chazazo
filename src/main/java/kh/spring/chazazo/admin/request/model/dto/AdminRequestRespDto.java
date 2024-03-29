package kh.spring.chazazo.admin.request.model.dto;

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
public class AdminRequestRespDto {
	
	private int idx;
	private String title;
	private int status;
	private String reqDate;
	private String ansDate;
	private String username;
	
}
