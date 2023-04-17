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
public class AdminRequestOneRespDto {
	
	private int idx;
	private String title;
	private int status;
	private String content;
	private String answer;
	
}
