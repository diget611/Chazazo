package kh.spring.chazazo.request.model.dto;

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
public class RequestRespDto {
	
	private String title;
	private String content;
	private int status;
	private Date reqDate;
	private Date ansDate;
	
}
