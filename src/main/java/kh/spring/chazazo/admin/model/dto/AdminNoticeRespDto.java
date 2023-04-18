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
public class AdminNoticeRespDto {
	
	private int idx;
	private String title;
	private String createDate;
	private int readCount;
	private String updateDate;
	private String deleteDate;
	
}
